import grpc
import sys
import logging
import sqlite3
from typing import Iterator
from concurrent import futures
from generated import greeter_pb2_grpc
from generated.greeter_pb2 import *

PORT = 50051
CONN = None

class UsersServicer(greeter_pb2_grpc.UsersServicer):
    def register(self, request: RegisterRequest, context: grpc.ServicerContext) -> User:
        logging.info(request);
        return super().register(request, context)

    def login(self, request: LoginRequest, context: grpc.ServicerContext) -> User:
        logging.info(request);
        return super().login(request, context)


class TripsServicer(greeter_pb2_grpc.TripsServicer):
    def tripsOf(self, request: TripsOfRequest, context: grpc.ServicerContext) -> TripsOfResponse:
        logging.info(request);
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
    CONN = sqlite3.connect("data.db")
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    greeter_pb2_grpc.add_TripsServicer_to_server(TripsServicer(), server)
    greeter_pb2_grpc.add_UsersServicer_to_server(UsersServicer(), server)
    server.add_insecure_port(f'[::]:{PORT}')
    server.start()
    logging.info(f'Server starting on port {PORT}')
    server.wait_for_termination()


if __name__ == '__main__':
    logging.basicConfig(stream=sys.stdout, level=logging.INFO)
    serve()

