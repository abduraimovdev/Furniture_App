import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const id = "/notification";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Notification Screen",
          ),
        ),
      ),
    );
  }
}