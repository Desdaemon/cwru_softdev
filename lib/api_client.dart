import 'package:cwru_softdev/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ApiClient {
  final UsersClient users;
  final TripsClient trips;

  ApiClient.fromChannel(ClientChannel channel)
      : users = UsersClient(channel),
        trips = TripsClient(channel);
}

late final api = ApiClient.fromChannel(ClientChannel(
  const String.fromEnvironment('backend_host', defaultValue: 'localhost'),
  port: const int.fromEnvironment('backend_port', defaultValue: 50051),
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
