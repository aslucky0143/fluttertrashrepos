//
import 'package:flutter/material.dart';

const boxDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 0, 126, 50),
      Colors.greenAccent,
      Colors.lightGreen,
      Colors.greenAccent,
      Color.fromARGB(255, 0, 126, 50),
      Color.fromARGB(255, 0, 126, 50),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);
