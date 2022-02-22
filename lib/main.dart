import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
