import 'package:bmical/Screens/calculator_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/MyDrawer.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const MyHome(),
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
          ),
        ),
      ),
    );
  }
}
