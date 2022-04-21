import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/home.dart';
import 'package:cwru_softdev/screens/login.dart';
import 'package:cwru_softdev/screens/prefs.dart';
import 'package:cwru_softdev/screens/profile.dart';
import 'package:cwru_softdev/screens/trips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/login.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (ctx, ref, _) {
      return MaterialApp(
        title: 'Travelog',
        debugShowCheckedModeBanner: false,
        themeMode: ref.watch(themeMode),
        theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        darkTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: Brightness.dark,
          ),
        ),
        initialRoute: '/login',
        routes: {
          '/': (context) => const HomePage(),
          '/login': (context) => const LoginScreen(),
          '/prefs': (context) => const PreferencesPage(),
          '/profile': (context) => const ProfilePage(),
          '/trips': (context) => const TripsPage(),
        },
      );
    });
  }
}
