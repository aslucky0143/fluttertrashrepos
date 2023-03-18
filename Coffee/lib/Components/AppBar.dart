// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar MyAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.black54),
              BoxShadow(color: Colors.black54),
              BoxShadow(color: Colors.black54),
              BoxShadow(color: Colors.black54),
            ],
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [
                Colors.white38,
                Colors.black54,
                Colors.black87,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: const Icon(Icons.menu_rounded),
      ),
    ),
    actions: [
      Container(
        decoration: const BoxDecoration(),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/Logo.png', fit: BoxFit.cover),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.output),
      ),
    ],
  );
}
