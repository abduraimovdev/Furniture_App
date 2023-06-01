import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static const id = "/order";
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Order Screen",
          ),
        ),
      ),
    );
  }
}