import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("List Tile Practice"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 30,
            width: 100,
            color: Colors.deepPurple,
            child: Text("Data"),
          )
        ],
      ),
    );
  }
}
