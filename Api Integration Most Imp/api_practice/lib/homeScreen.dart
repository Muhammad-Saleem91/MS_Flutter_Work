import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  getPostApi() async{
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await http.get(url);

    var responseBody = jsonDecode(response.body);

    print(responseBody);
  }

  //   var url = Uri.parse("https://jsonplaceholder.typicode.com/postsx");
  // getPostApi() async {

  //   var response = await http.get(url);

  //   var responseBody = jsonDecode(response.body);

  //   print(responseBody[1]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ElevatedButton(onPressed: getPostApi, child: Text("Get API")));
  }
}
