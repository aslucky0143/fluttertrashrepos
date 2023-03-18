import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: Container(
          color: Colors.teal,
        )),
        Flexible(
            flex: 3,
            child: Container(
              color: Colors.teal,
            )),
      ],
    );
  }
}
