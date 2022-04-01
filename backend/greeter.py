import grpc
import sys
import logging
import sqlite3
from typing import Iterator
from concurrent import futures
from generated import greeter_pb2_grpc
from generated.greeter_pb2 import *

PORT = 50051
DBPATH = 'test.db'

def prepareDatabase(dbpath: str):
    with open(dbpath, 'w') as _:
        pass # truncate and close immediately

def sql(query: str, params = ()):
    res = []
    with sqlite3.connect(DBPATH) as con:
        res = con.execute(query, params).fetchall()
    return res

class UsersServicer(greeter_pb2_grpc.UsersServicer):
    def register(self, request: RegisterRequest, context: grpc.ServicerContext) -> User:
        username = request.username
        email = request.email
        password = request.password
        logging.info((username, email))
        sql('insert into Users(username, email, password) values(?, ?, ?)', (username, email, password))
        new_user = sql(
            """
            select user_id from Users
            where username = ?
            and   email = ? 
            """,
            (username, email))
        assert len(new_user) == 1, 'failed to find new user'
        user_id, = new_user[0]
        return User(user_id=int(user_id), username=username, email=email)

    def login(self, request: LoginRequest, context: grpc.ServicerContext) -> User:
        identity = request.identity
        password = request.password
        logging.info(f'login request for {identity}')
        login_user = sql(
            """
            select user_id, username, email from Users
            where (username = ? or email = ?)
            and   password = ?
            """,
            (identity, identity, password))
        assert len(login_user) == 1, 'failed to login'
        user_id, username, email = login_user[0]
        return User(user_id=int(user_id), username=username, email=email)


class TripsServicer(greeter_pb2_grpc.TripsServicer):
    def tripsOf(self, request: TripsOfRequest, context: grpc.ServicerContext) -> TripsOfResponse:
        userid = request.user_id
        logging.info(f'retrieve trips for {userid}')
        stops = sql(
            """
            select T.trip_id, D.lat, D.lon
            from Trips T
            inner join TripDestinations TD on
                T.user_id = ? and
                T.trip_id = TD.trip_id
            natural join Destinations D
            group by T.trip_id
            order by visit_date asc, visit_time asc
            """,
            (userid,))
        logging.info(stops)
        return super().tripsOf(request, context)

    def photosOf(self, request: PhotosOfRequest, context: grpc.ServicerContext) -> Iterator[PhotosOfResponse]:
        logging.info(request);
        return super().photosOf(request, context)

    def addTrip(self, request: AddTripRequest, context: grpc.ServicerContext) -> Result:
        logging.info(request);
        return super().addTrip(request, context)

    def deleteTrip(self, request: DeleteTripRequest, context: grpc.ServicerContext) -> Result:
        logging.info(request);
        return super().deleteTrip(request, context)

    def addPhoto(self, request: AddPhotoRequest, context: grpc.ServicerContext) -> Result:
        logging.info(request);
        return super().addPhoto(request, context)


def serve():
    prepareDatabase(DBPATH)
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

