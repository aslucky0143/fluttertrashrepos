// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home_page.dart';
import 'Library/Home.dart';
import 'Constants.dart';

class SplashToNXT extends StatelessWidget {
  const SplashToNXT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/CRR_Logo.png',
        height: 200,
        width: 200,
      ),
      nextScreen: const Home(),
      animationDuration: const Duration(milliseconds: 1000),
      splashIconSize: 1440,
      splashTransition: SplashTransition.fadeTransition,
      centered: true,
      backgroundColor: p,
    );
  }
}
