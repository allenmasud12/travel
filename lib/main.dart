import 'package:flutter/material.dart';
import 'package:untitled14/screen/login.dart';
import 'package:untitled14/screen/signup.dart';
import 'package:untitled14/view/bangladesh.dart';
import 'package:untitled14/view/homeView.dart';
import 'package:untitled14/view/information.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
