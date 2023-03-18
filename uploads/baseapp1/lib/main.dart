import 'AppBar.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'SideNavBar.dart';
import 'body.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sir C.R. Reddy College Of Engineering',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {Login.routename: (_) => const Login()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: Appbar(context),
      body: SingleChildScrollView(
        child: body(),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SideNavBar();
  }
}
