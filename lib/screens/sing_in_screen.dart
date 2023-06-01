import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const id = "/signIn";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "SignIn Screen",
          ),
        ),
      ),
    );
  }
}