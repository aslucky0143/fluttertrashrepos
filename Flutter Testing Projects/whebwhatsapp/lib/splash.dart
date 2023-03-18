import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';

class AnimatedSP extends StatelessWidget {
  const AnimatedSP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          backgroundColor: const Color.fromARGB(255, 29, 100, 64),
          splash: Image.asset('assets/Login/WhatsApp.png'),
          nextScreen: const Home(),
          duration: 2500,
          splashTransition: SplashTransition.fadeTransition),
      debugShowCheckedModeBanner: false,
    );
  }
}
