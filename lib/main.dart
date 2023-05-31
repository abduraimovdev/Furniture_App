import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomWidget(),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
