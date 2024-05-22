import 'package:counter_app/MainCounter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainCounter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
