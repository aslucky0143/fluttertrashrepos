import 'package:flutter/material.dart';
import 'Login.dart';

AppBar Appbar(BuildContext context) {
  return AppBar(
    title: const Text('Hello, User'),
    foregroundColor: Colors.purple,
    toolbarHeight: 75,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: [
      IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Login.routename);
          },
          icon: const Icon(Icons.account_circle_outlined))
    ],
  );
}
