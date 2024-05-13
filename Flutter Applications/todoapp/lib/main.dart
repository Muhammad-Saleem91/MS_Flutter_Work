import 'package:flutter/material.dart';
import 'package:todoapp/listTile.dart';

void main() {
  runApp(const MsWidget());
}

class MsWidget extends StatelessWidget {
  const MsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Muhammad Saleem",
      home: MyWidget(),
    );
  }
}
