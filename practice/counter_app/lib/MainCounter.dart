import 'package:counter_app/counter_widget.dart';
import 'package:flutter/material.dart';

class MainCounter extends StatelessWidget {
  const MainCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00509E),
      appBar: AppBar(
        title: Text(
          "MS COUNTER APP",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Counter_Widget(),
          ],
        ),
      ),
    );
  }
}
