import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class LibLogout extends StatelessWidget {
  const LibLogout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: const Text("Loged Out SuccessFully"),
        nextScreen: const LibHome(),
        duration: 2000,
      ),
    );
  }
}
