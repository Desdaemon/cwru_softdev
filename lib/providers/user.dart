import 'package:cwru_softdev/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../generated/greeter.pb.dart';

class UserProvider extends StateNotifier<User?> {
  UserProvider([User? user]) : super(user);

  Future<UserResponse> login({
    required String identity,
    required String password,
  }) async {
    // Classes that extend StateNotifier<T> will have a getter/setter pair "state"
    // of type T, which holds the current state of this notifier. Writing to this
    // pseudo-attribute will force a state change.
    final res = await api.users.login(LoginRequest(
      identity: identity,
      password: password,
    ));
    if (res.hasUser()) state = res.user;
    return res;
  }

  Future<UserResponse> register({
    required String username,
    required String password,
  }) async {
    final res = await api.users.register(RegisterRequest(
      username: username,
      password: password,
    ));
    if (res.hasUser()) state = res.user;
    return res;
  }

  void logout() {
    state = null;
  }
}
