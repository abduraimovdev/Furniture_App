import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Profile Screen",
          ),
        ),
      ),
    );
  }
}