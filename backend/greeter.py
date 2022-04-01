import grpc
import sys
import logging
import sqlite3
from typing import Iterator, Iterable, Any
from concurrent import futures
from generated import greeter_pb2_grpc
from generated.greeter_pb2 import *

PORT = 50051
DBPATH = 'test.db'

def prepareDb(dbpath: str):
    with open(dbpath, 'w') as _:
        pass # truncate and close immediately

def sql(query: str,
        params: tuple | Iterable[Any] = (),
        with_con: sqlite3.Connection | None = None) -> list[tuple]:
    """
    Wrapper around sqlite.Connection.{execute, executemany}.

    Pass a tuple for single execution, or an iterable for parameterized execution.
    
    Pass an optional third argument as the connection to use.
    """
    res: list[tuple] = []
    def _call(con):
        if isinstance(params, tuple):
            res = con.execute(query, params).fetchall()
        elif isinstance(params, Iterable):
            res = con.executemany(query, params).fetchall()
    if with_con is not None:
        _call(with_con)
    else:
        with sqlite3.connect(DBPATH) as con:
            _call(con)
    return res

def sqlCursor(query: str, params=(), batch_size=16) -> Iterator[tuple]:
    with sqlite3.connect(DBPATH) as con:
        cursor = con.execute(query, params)
        try:
            yield from cursor.fetchmany(batch_size)
        except sqlite3.Error as error:
            logging.error(error)
            return

class UsersServicer(greeter_pb2_grpc.UsersServicer):
    def register(self, request: RegisterRequest, context: grpc.ServicerContext) -> User:
        username = request.username
        email = request.email
        password = request.password
        logging.info((username, email))
        new_user = sql(
            'insert into Users(username, email, password) values(?, ?, ?) returning user_id',
            (username, email, password)
        )
        assert len(new_user) == 1, 'failed to find new user'
        user_id, = new_user[0]
        return User(user_id=int(user_id), username=username, email=email)

    def login(self, request: LoginRequest, context: grpc.ServicerContext) -> User:
        identity = request.identity
        password = request.password
        logging.info(f'{identity=}')
        login_user = sql(
            """
            select user_id, username, email from Users
            where
                (username = ? or email = ?) and
                password = ?
            """,
            (identity, identity, password))
        assert len(login_user) == 1, 'failed to login'
        user_id, username, email = login_user[0]
        return User(user_id=int(user_id), username=username, email=email)


class TripsServicer(greeter_pb2_grpc.TripsServicer):
    def tripsOf(self, request: TripsOfRequest, context: grpc.ServicerContext) -> TripsOfResponse:
        userid = request.user_id
        logging.info(f'{userid=}')
        stops = sql(
            """
            select T.trip_id, D.lat, D.lon
            from Trips T
            inner join TripDestinations TD
            on
                T.user_id = ? and
                T.trip_id = TD.trip_id
            inner join Destinations D
            on
                TD.lat = D.lat and
                TD.lon = D.lon
            order by visit_date asc, visit_time asc
            """,
            (userid,)
        )

        # handle "group by" here, since SQLite does not do it for us
        trips: dict[str, list[Coord]] = {}
        for trip_id, lat, lon in stops:
            if not trips[trip_id]:
                trips[trip_id] = []
            trips[trip_id].append(Coord(lat=lat, long=lon))
    
        return TripsOfResponse(trips=[
            Trip(trip_id=int(trip_id), stops=stops)
            for trip_id, stops in trips.items()
        ])

    def photosOf(self, request: PhotosOfRequest, context: grpc.ServicerContext) -> Iterator[PhotosOfResponse]:
        userid = request.user_id
        tripid = request.trip_id
        logging.info(f'{userid=} {tripid=}')
        cursor = sqlCursor(
            """
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

    def addTrip(self, request: AddTripRequest, context: grpc.ServicerContext) -> Result:
        userid = request.user_id
        logging.info(f'{userid=} {[*request.stops]=}')
        with sqlite3.connect(DBPATH) as con:
            # manually open a transaction here, autocommit at the end of the with statement
            sql(
                'insert into Destinations(lat, lon) values(?, ?)',
                [ (stop.lat, stop.long) for stop in request.stops ],
                con
            )
            trip = sql(
                'insert into Trips(user_id) values(?) returning trip_id',
                (userid,),
                con
            )
            assert len(trip) == 1, 'expected to add a single trip only'
            tripid, = trip[0]
            sql(
                'insert into TripDestinations(trip_id, lat, lon) values (?, ?, ?)',
                [
                    (tripid, stop.lat, stop.long)
                    for stop in request.stops
                ],
                con
            )
            return Result(success=True)

        return Result(
            success=False, 
            reason=Result.Error(errors=('Could not connect to the database.',))
        )


    def deleteTrip(self, request: DeleteTripRequest, context: grpc.ServicerContext) -> Result:
        userid = request.user_id
        tripid = request.trip_id
        sql(
            'delete from Trips where user_id = ? and trip_id = ?',
            (userid, tripid)
        )
        return Result(success=True)

    def addPhoto(self, request: AddPhotoRequest, context: grpc.ServicerContext) -> Result:
        userid = request.user_id
        name = request.name
        url = request.url
        assert url, 'url should not be empty'
        logging.info(f'{userid=} {name=} {url=}')
        return super().addPhoto(request, context)


def serve():
    prepareDb(DBPATH)
    with open('schema.sql', 'r') as f:
        with sqlite3.connect(DBPATH) as con:
            con.executescript(f.read())

    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    greeter_pb2_grpc.add_TripsServicer_to_server(TripsServicer(), server)
    greeter_pb2_grpc.add_UsersServicer_to_server(UsersServicer(), server)
    server.add_insecure_port(f'[::]:{PORT}')
    server.start()
    logging.info(f'Server starting on port {PORT}')
    server.wait_for_termination()


if __name__ == '__main__':
    logging.basicConfig(stream=sys.stdout, level=logging.INFO,
                        format='[%(asctime)s %(levelname)s] (%(funcName)s) %(message)s')
    serve()

