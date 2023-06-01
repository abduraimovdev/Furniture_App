import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  static const id = "/review";
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Review Screen",
          ),
        ),
      ),
    );
  }
}