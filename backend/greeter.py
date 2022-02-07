import grpc
import sys
from concurrent import futures
from generated.greeter_pb2 import *
from generated import greeter_pb2_grpc
import logging

PORT = 50051

class GreeterServicer(greeter_pb2_grpc.GreeterServicer):
    def sayHello(self, request: HelloRequest, _: grpc.ServicerContext) -> HelloReply:
        logging.info(request)
        name = request.name or "stranger"
        return HelloReply(message=f"Hello there, {name}.")

    def sayHelloAgain(self, request: HelloRequest, _: grpc.ServicerContext) -> HelloReply:
        logging.info(request)
        name = request.name or "stranger"
        return HelloReply(message=f"Hello again, {name}. How you doin'?")

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    greeter_pb2_grpc.add_GreeterServicer_to_server(GreeterServicer(), server)
    server.add_insecure_port(f'[::]:{PORT}')
    server.start()
    logging.info(f'Server starting on port {PORT}')
    server.wait_for_termination()


if __name__ == '__main__':
    logging.basicConfig(stream=sys.stdout, level=logging.INFO)
    serve()
