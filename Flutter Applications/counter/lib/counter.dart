import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App By MS"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Text("Counter pressed: $counter"),
          Row(
            children: [
              ElevatedButton(
                  onPressed: incrementCounter,
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: decrementCounter,
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
