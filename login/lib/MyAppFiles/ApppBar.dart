import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    actions: [
      IconButton(
        icon: const Icon(Icons.account_circle_outlined),
        onPressed: () {
          Navigator.of(context).pushNamed(Login.routename);
        },
      )
    ],
    title: const Text('Hello, User'),
    foregroundColor: Colors.purple,
    toolbarHeight: 75,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
