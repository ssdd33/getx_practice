import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getx_practice/controller/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('welcome'),
            Text(FirebaseAuth.instance.currentUser!.email!),
            IconButton(
              onPressed: () {
                AuthController.instance.logout();
              },
              icon: const Icon(
                Icons.login_outlined,
              ),
            )
          ],
        ),
      ),
    );
  }
}
