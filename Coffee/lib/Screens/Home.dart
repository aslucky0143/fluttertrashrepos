// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Components/AppBar.dart';
import '../Components/MyBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 12, 15, 20),
      appBar: MyAppbar(),
      body: const MyBody(),
    );
  }
}
