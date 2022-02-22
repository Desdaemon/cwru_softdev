// ignore_for_file: avoid_print

import 'package:cwru_softdev/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final userClient = UsersClient(channel);
  final tripClient = TripsClient(channel);
  final user = await userClient.register(RegisterRequest(username: 'foo', email: 'foo@foo.com', password: 'hunter2'));
  await userClient.login(LoginRequest(identity: 'foo', password: 'hunter2'));
  final trips = await tripClient.tripsOf(TripsOfRequest(userId: user.userId));
  for (final trip in trips.trips) {
    await for (final res in tripClient.photosOf(
      PhotosOfRequest(userId: user.userId, tripId: trip.tripId),
    )) {
      print(res.photo);
    }
  }
  await channel.shutdown();
}
