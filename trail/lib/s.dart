import 'package:flutter/material.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
  static const routename = "Login";
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
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
          )),
          child: const Center(
            child: Image(
              image: AssetImage('assets/CRR_Logo.png'),
            ),
          ),
        ),
      );
}
