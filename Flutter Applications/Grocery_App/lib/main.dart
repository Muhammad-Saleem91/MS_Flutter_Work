import 'package:flutter/material.dart';

import 'package:flutter_project/screens/homeScreen.dart';

import 'utils/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      home: const home_Screen(), 
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: false,
        
      ), 
    );
  }
}
