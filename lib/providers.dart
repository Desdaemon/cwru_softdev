import 'package:cwru_softdev/api_client.dart';
import 'package:cwru_softdev/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:latlong2/latlong.dart';
import 'generated/greeter.pb.dart';
export 'generated/greeter.pb.dart';

final locations = StateProvider((_) => <Destination>[]);
final user = StateNotifierProvider<UserProvider, User?>((_) => UserProvider());
final themeMode = StateProvider((_) => ThemeMode.system);

/// Empty if not logged in.
final userTrips = FutureProvider<List<Trip>>((ref) async {
  final u = ref.watch(user);
  if (u == null) return const [];
  final res = await api.trips.tripsOf(TripsOfRequest(userId: u.userId));
  return res.trips;
});
