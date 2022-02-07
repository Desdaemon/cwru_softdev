// ignore_for_file: avoid_print

import 'package:cwru_softdev/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final api = GreeterClient(channel);
  await api.sayHello(HelloRequest()).then(print);
  await api.sayHello(HelloRequest(name: 'John')).then(print);
  await api.sayHelloAgain(HelloRequest()).then(print);
  await api.sayHelloAgain(HelloRequest(name: 'John')).then(print);
  await channel.shutdown();
}
