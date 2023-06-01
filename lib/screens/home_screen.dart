import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Home Screen",
          ),
        ),
      ),
    );
  }
}