import 'package:flutter/material.dart';

class CongratsScreen extends StatelessWidget {
  static const id = "/congrats";
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Congrats Screen",
          ),
        ),
      ),
    );
  }
}