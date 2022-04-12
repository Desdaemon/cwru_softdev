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
  '127.0.0.1',
  port: 50051,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
