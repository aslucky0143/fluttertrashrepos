// ignore: file_names
// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

const boxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xFF45048a),
      Colors.deepPurple,
      Colors.purpleAccent,
      Colors.purple,
      Color(0xFF45048a),
      Color(0xFF45048a),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

TextField TextEntry(IconButton iconButton, String? Label, int n) {
  return TextField(
    obscureText: n == 1 ? true : false,
    decoration: InputDecoration(
      labelText: Label,
      suffix: iconButton,
    ),
  );
}

const Color w = Colors.white;
const Color p = Color.fromARGB(255, 134, 217, 255);
const Color b = Color.fromARGB(255, 50, 47, 47);
