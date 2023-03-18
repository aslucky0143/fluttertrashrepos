// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class MyItems extends StatelessWidget {
  MyItems({
    Key? key,
  }) : super(key: key);
  double boxheight = 200;

  @override
  Widget build(BuildContext context) {
    var colors2 = [
      Colors.green,
      Colors.grey,
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GlassmorphicContainer(
            margin: EdgeInsets.only(left: 20),
            height: boxheight,
            width: boxheight * .655,
            borderRadius: 20,
            blur: 20,
            alignment: Alignment.bottomCenter,
            border: 2,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.1),
                  Color(0xFFFFFFFF).withOpacity(0.05),
                ],
                stops: [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.5),
                Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: GlassmorphicContainer(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(bottom: 92),
              blur: 12,
              border: 12,
              borderGradient: LinearGradient(colors: colors2),
              borderRadius: 12,
              height: 100,
              width: 100,
              linearGradient: LinearGradient(colors: colors2),
              child: Image.asset(
                'assets/coffee-1.png',
                fit: BoxFit.cover,
                alignment: Alignment.center,
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
