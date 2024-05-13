import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff5842A9),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Mostly Sunny",
                style: TextStyle(color: Colors.white),
              ),
              Stack(
                children: [
                  Text(
                    "25°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, top: 70.0),
                      child: Image(
                          height: 150,
                          image: AssetImage(
                            "assets/icon/cloudy.png",
                          )),
                    ),
                  )
                ],
              ),
              Text(
                "Saturday, 10 Feburary, | 10:00 AM",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
