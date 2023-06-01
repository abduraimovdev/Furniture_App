import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  static const id = "/favorite";
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Favorite Screen",
          ),
        ),
      ),
    );
  }
}