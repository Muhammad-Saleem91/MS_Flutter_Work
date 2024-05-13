import 'package:flutter/material.dart';
import 'package:ms_flutterapp/login_view.dart';

void main() {
  runApp(const MsApp());
}

class MsApp extends StatelessWidget {
  const MsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginView(),
    );
  }
}

// main structure of the main.dart