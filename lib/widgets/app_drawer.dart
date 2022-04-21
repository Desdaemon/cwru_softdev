import 'package:cwru_softdev/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context)!;
    return Drawer(
      child: Column(
        children: [
          Consumer(builder: (ctx, ref, _) {
            final user_ = ref.watch(user);
            return UserAccountsDrawerHeader(
              accountName: user_ == null ? const Text('Welcome') : Text(user_.username),
              accountEmail: user_ == null ? null : Text(user_.email),
            );
          }),
          for (final entry in const {
            'Profile': '/profile',
            'Map': '/',
            'Trips': '/trips',
            'Preferences': '/prefs',
          }.entries)
            ListTile(
              title: Text(entry.key),
              selected: modalRoute.settings.name == entry.value,
              // selected: true,
              onTap: () {
                Navigator.pushNamed(context, entry.value);
              },
            ),
          Consumer(builder: (context, ref, _) {
            return ListTile(
              title: const Text('Logout'),
              onTap: () {
                ref.read(user.notifier).logout();
                Navigator.pushNamed(context, '/login');
              },
            );
          })
        ],
      ),
    );
  }
}
