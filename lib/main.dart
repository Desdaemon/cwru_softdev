import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/login.dart';
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
        home: const Scaffold(
          body: LoginScreen(),
        ),
      );
    });
  }
}
