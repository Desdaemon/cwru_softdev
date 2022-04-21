import 'package:cwru_softdev/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

class ApiClient {
  final UsersClient users;
  final TripsClient trips;

  ApiClient.fromChannel(GrpcOrGrpcWebClientChannel channel)
      : users = UsersClient(channel),
        trips = TripsClient(channel);
}

const port = int.fromEnvironment('backend_port', defaultValue: 50051);
const webPort = int.fromEnvironment('web_backend_port', defaultValue: port + 1);

late final api = ApiClient.fromChannel(GrpcOrGrpcWebClientChannel.toSeparatePorts(
  host: const String.fromEnvironment('backend_host', defaultValue: 'localhost'),
  grpcPort: port,
  grpcWebPort: webPort,
  grpcTransportSecure: false,
  grpcWebTransportSecure: false,
));
