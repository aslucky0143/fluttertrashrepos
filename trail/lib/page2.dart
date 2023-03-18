import 'package:flutter/material.dart';
import 'package:trail/constants.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);
  static const routename = "page2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: black,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [Image.asset("assets/CRR_Logo_Black.png")],
      )),
    );
  }
}
