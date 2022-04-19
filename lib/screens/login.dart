import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Travel Log',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login/Register',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () async {
                final response = await ref
                    .read(user.notifier)
                    .login(identity: nameController.text, password: passwordController.text);
                if (response.hasError()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.error)));
                } else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomePage()));
                }
              },
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ElevatedButton(
              child: const Text('Register'),
              onPressed: () async {
                final UserResponse response = await ref
                    .read(user.notifier)
                    .register(username: nameController.text, password: passwordController.text);
                if (response.hasError()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.error)));
                } else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomePage()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
