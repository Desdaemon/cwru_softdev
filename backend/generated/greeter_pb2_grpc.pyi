"""
@generated by mypy-protobuf.  Do not edit manually!
isort:skip_file
"""
import abc
import greeter_pb2
import grpc

class GreeterStub:
    """The greeting service definition."""
    def __init__(self, channel: grpc.Channel) -> None: ...
    sayHello: grpc.UnaryUnaryMultiCallable[
        greeter_pb2.HelloRequest,
        greeter_pb2.HelloReply]
    """Sends a greeting"""

    sayHelloAgain: grpc.UnaryUnaryMultiCallable[
        greeter_pb2.HelloRequest,
        greeter_pb2.HelloReply]
    """Sends another greeting"""


class GreeterServicer(metaclass=abc.ABCMeta):
    """The greeting service definition."""
    @abc.abstractmethod
    def sayHello(self,
        request: greeter_pb2.HelloRequest,
        context: grpc.ServicerContext,
    ) -> greeter_pb2.HelloReply:
        """Sends a greeting"""
        pass

    @abc.abstractmethod
    def sayHelloAgain(self,
        request: greeter_pb2.HelloRequest,
        context: grpc.ServicerContext,
    ) -> greeter_pb2.HelloReply:
        """Sends another greeting"""
        pass


def add_GreeterServicer_to_server(servicer: GreeterServicer, server: grpc.Server) -> None: ...
