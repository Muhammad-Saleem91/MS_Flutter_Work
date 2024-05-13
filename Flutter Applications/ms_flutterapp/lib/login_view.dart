import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("MS WORLD BY MUHAMMAD SALEEM "),
        ),
        body: Image.asset('assets/image/MSLOGO.jpg'));
  }
}
