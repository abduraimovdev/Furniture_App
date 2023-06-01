import 'package:flutter/material.dart';

class ShippingScreen extends StatelessWidget {
  static const id = "/shipping";
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Shipping Screen",
          ),
        ),
      ),
    );
  }
}