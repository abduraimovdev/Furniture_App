import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  static const id = "/checkOut";
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "CheckOut Screen",
          ),
        ),
      ),
    );
  }
}