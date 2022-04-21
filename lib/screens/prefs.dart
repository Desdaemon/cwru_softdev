import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreferencesPage extends ConsumerWidget {
  const PreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeMode);
    return Scaffold(
      appBar: AppBar(title: const Text('Preferences')),
      drawer: const AppDrawer(),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark mode'),
            value: theme == ThemeMode.dark,
            onChanged: (val) {
              ref.read(themeMode.state).state = val ? ThemeMode.dark : ThemeMode.light;
            },
          ),
          ListTile(
            title: const Text(
              'Delete account',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
