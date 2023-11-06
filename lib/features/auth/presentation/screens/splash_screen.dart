import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is splash screen'),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).goNamed('login');
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).goNamed('signup');
              },
              child: const Text('Create a account'),
            ),
          ],
        ),
      ),
    );
  }
}
