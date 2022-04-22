import grpc
import sys
import logging
import sqlite3
import socket
# from sonora.wsgi import grpcWSGI
from grpcWSGI.server import grpcWSGI
from wsgiref.simple_server import make_server
from google.protobuf.timestamp_pb2 import Timestamp
from typing import Iterator, Iterable, Any
from concurrent import futures
from generated import greeter_pb2_grpc
from generated.greeter_pb2 import *

PORT = 50051
DBPATH = 'test.db'

sqlite3.register_adapter(Timestamp, lambda x: x.SerializeToString())


def prepareDb(dbpath: str):
    with open(dbpath, 'w') as _:
        pass  # truncate and close immediately
    with open('schema.sql', 'r') as f:
        with sqlite3.connect(DBPATH) as con:
            con.executescript(f.read())


def connect(): return sqlite3.connect(DBPATH)


def sql(query: str,
        params=(),
        with_con=None) -> list[tuple]:
    """
    Wrapper around sqlite.Connection.{execute, executemany}.

    Pass a tuple for single execution, or an iterable for parameterized execution.

    Pass an optional third argument as the connection to use.
    """
    def _call(con: sqlite3.Connection):
        if isinstance(params, tuple):
            return con.execute(query, params).fetchall()
        if isinstance(params, Iterable):
            return con.executemany(query, params).fetchall()
        raise Exception(f'Expected tuple for Iterable, got {type(params)}')

    if with_con is not None:
        return _call(with_con)
    else:
        with connect() as con:
            return _call(con)


def sqlCursor(query: str, params=(), batch_size=16) -> Iterator[tuple]:
    with connect() as con:
        cursor = con.execute(query, params)
        try:
            yield from cursor.fetchmany(batch_size)
        except sqlite3.Error as error:
            logging.error(error)
            return


class UsersServicer(greeter_pb2_grpc.UsersServicer):
    def Register(self, request: RegisterRequest, context: grpc.ServicerContext) -> UserResponse:
        username = request.username
        email = request.email
        password = request.password
        logging.info(f'{username=} {email=}')
        new_user = sql(
            'insert into Users(username, email, password) values(?, ?, ?) returning user_id',
            (username, email, password)
        )
        if len(new_user) != 1:
            return UserResponse(error=f'expected single new user, got {len(new_user)}')

        user_id, = new_user[0]
        return UserResponse(user=User(user_id=int(user_id), username=username, email=email))

    def Login(self, request: LoginRequest, context: grpc.ServicerContext) -> UserResponse:
        identity = request.identity
        password = request.password
        logging.info(f'{identity=}')
        login_user = sql(
            """--sql
            select user_id, username, email from Users
            where
                (username = ? or email = ?) and
                password = ?
            """,
            (identity, identity, password))
        if len(login_user) != 1:
            return UserResponse(error='Invalid username or password')

        user_id, username, email = login_user[0]
        return UserResponse(user=User(
            user_id=int(user_id),
            username=username,
            email=email
        ))


class TripsServicer(greeter_pb2_grpc.TripsServicer):
    def TripsOf(self, request: TripsOfRequest, context: grpc.ServicerContext) -> TripsOfResponse:
        userid = request.user_id
        logging.info(f'{userid=}')
        stops = sql(
            """--sql
            select T.trip_id, D.lat, D.lon
            from Trips T
            left outer join TripDestinations TD
            on
                T.trip_id = TD.trip_id
            left outer join Destinations D
            on
                TD.lat = D.lat and
                TD.lon = D.lon
            where T.user_id = ?
            order by visit_date asc, visit_time asc
            """,
            (userid,)
        )

        # handle "group by" here, since SQLite does not do it for us
        trips: dict[str, list[Destination]] = {}
        for trip_id, lat, lon in stops:
            trips.setdefault(trip_id, []).append(
                Destination(coords=Coords(lat=lat, lon=lon)))

        return TripsOfResponse(trips=[
            Trip(trip_id=int(trip_id), stops=stops)
            for trip_id, stops in trips.items()
        ])

    def PhotosOf(self, request: PhotosOfRequest, context: grpc.ServicerContext) -> Iterator[PhotosOfResponse]:
        userid = request.user_id
        tripid = request.trip_id
        logging.info(f'{userid=} {tripid=}')
        cursor = sqlCursor(
            """--sql
            select P.photo_id, P.name, P.url
            from Trips T
            inner join TripDestinations TD
            on
                T.user_id = ? and
                T.trip_id = ? and
                T.trip_id = TD.trip_id
            inner join DestinationPhotos DP
            on
                DP.lat = TD.lat and
                DP.lon = TD.lon
            inner join Photos P
            on
                DP.photo_id = P.photo_id
            """,
            (userid, tripid)
        )
        for photoid, name, url in cursor:
            yield PhotosOfResponse(photo=Photo(
                photo_id=photoid,
                name=name,
                url=url,
            ))

    def AddTrip(self, request: AddTripRequest, context: grpc.ServicerContext) -> Result:
        userid = request.user_id
        logging.info(f'{userid=} {[*request.trips]=}')
        with connect() as con:
            # manually open a transaction here, autocommit at the end of the with statement
            for trip in request.trips:
                sql(
                    'insert into Destinations(lat, lon) values(?, ?)',
                    [
                        (stop.coords.lat, stop.coords.lon)
                        for stop in trip.stops
                    ],
                    con
                )
                new_trip = sql(
                    'insert into Trips(user_id) values(?) returning trip_id',
                    (userid,),
                    con
                )
                assert len(
                    new_trip) == 1, f'expected single trip, got {len(new_trip)}'
                tripid, = new_trip[0]
                sql(
                    'insert into TripDestinations(trip_id, lat, lon) values (?, ?, ?)',
                    [
                        (tripid, stop.coords.lat, stop.coords.lon)
                        for stop in trip.stops
                    ],
                    con
                )
        return Result()

    def DeleteTrip(self, request: DeleteTripRequest, context: grpc.ServicerContext) -> Result:
        userid = request.user_id
        tripid = request.trip_id
        sql(
            'delete from Trips where user_id = ? and trip_id = ?',
            (userid, tripid)
        )
        return Result()

    def AddPhotoToDestination(self, request: AddDestPhotoRequest, context: grpc.ServicerContext) -> Result:
        coords = request.coords
        photos = request.photos
        with connect() as con:
            photoids = [
                # SQL bindings do not allow multiple execution with data-returning statements,
                # so flatten them out manually here.
                sql(
                    'insert into Photos(name, url, date_taken) values (?, ?, ?) returning photo_id',
                    (photo.name, photo.url, photo.date_taken),
                    con
                )[0]
                for photo in photos
            ]
            assert len(photoids) == len(
                photos), f'expect all photos to be added ({len(photoids)=} == {len(photos)=})'
            sql(
                'insert into DestinationPhotos(lat, lon, photo_id) values (?, ?, ?)',
                [
                    (coords.lat, coords.lon, id)
                    for id, in photoids
                ],
                con
            )
        return Result()


def serve():
    prepareDb(DBPATH)

    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    greeter_pb2_grpc.add_TripsServicer_to_server(TripsServicer(), server)
    greeter_pb2_grpc.add_UsersServicer_to_server(UsersServicer(), server)
    server.add_insecure_port(f'[::]:{PORT}')
    server.start()

    grpcweb = grpcWSGI(None)
    with make_server('', PORT + 1, grpcweb) as httpd:
        greeter_pb2_grpc.add_TripsServicer_to_server(TripsServicer(), grpcweb)
        greeter_pb2_grpc.add_UsersServicer_to_server(UsersServicer(), grpcweb)

    # logging.info(f'🎉 Server starting on port 0.0.0.0:{PORT} and {get_ip()}:{PORT}')
        ip = get_ip()
        logging.info(
            f'''
🎉  Server starting on:
- Local:   0.0.0.0:{PORT}
- Network: {ip}:{PORT}
- Web:     {ip}:{PORT + 1} (Experimental)'''
        )
        httpd.serve_forever()
        server.wait_for_termination()


def get_ip():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.settimeout(0)
    try:
        # doesn't even have to be reachable
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except Exception:
        IP = '127.0.0.1'
    finally:
        s.close()
    return IP


if __name__ == '__main__':
    input('''
DO NOT RUN THIS IN THE PRODUCTION ENVIRONMENT.
This program will overwrite existing databases.
Press Enter to acknowledge this message.
''')
    logging.basicConfig(stream=sys.stdout, level=logging.INFO,
                        format='[%(asctime)s %(levelname)s] (%(funcName)s) %(message)s')
    serve()
