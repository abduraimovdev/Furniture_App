import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const id = "/signUp";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "SignUp Screen",
          ),
        ),
      ),
    );
  }
}