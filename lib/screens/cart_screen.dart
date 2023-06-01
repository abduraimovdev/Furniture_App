import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static const id = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Cart Screen",
          ),
        ),
      ),
    );
  }
}