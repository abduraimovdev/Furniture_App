import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const id = "/product";
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Product Screen",
          ),
        ),
      ),
    );
  }
}