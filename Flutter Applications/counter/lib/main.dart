import 'package:counter/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
