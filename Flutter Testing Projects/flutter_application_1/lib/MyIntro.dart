// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MyIntroScreen extends StatelessWidget {
  const MyIntroScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 21, 19, 37),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Center(
            child: RiveAnimation.asset(
              'assets/Rive Animations/off_road_car.riv',
            ),
          ),
        ),
      ),
    );
  }
}
