import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

import 'LoginScreen.dart';

class SplashToNXT extends StatelessWidget {
  const SplashToNXT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: LoginIcon,
      nextScreen: const MyFirstpage(),
      animationDuration: const Duration(milliseconds: 1000),
      splashIconSize: 1440,
      splashTransition: SplashTransition.fadeTransition,
      centered: true,
    );
  }
}
