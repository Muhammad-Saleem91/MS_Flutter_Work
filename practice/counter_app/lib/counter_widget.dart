import 'package:flutter/material.dart';

class Counter_Widget extends StatefulWidget {
  const Counter_Widget({super.key});

  @override
  State<Counter_Widget> createState() => _Counter_WidgetState();
}

class _Counter_WidgetState extends State<Counter_Widget> {
  int counter = 0;

  void incrementCounter() {
    counter++;
    setState(() {});
  }

  void decrementCounter() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$counter",
            style: TextStyle(fontSize: 40),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: incrementCounter,
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: decrementCounter,
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
