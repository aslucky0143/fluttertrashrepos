import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        nextScreen: const HomeScreen(),
        splash: const Icon(
          Icons.emoji_food_beverage,
          size: 120,
          color: Color.fromARGB(255, 189, 146, 131),
        ),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
