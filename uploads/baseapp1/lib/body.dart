import 'package:flutter/material.dart';

Center body() {
  return Center(
    child: Column(
      children: <Widget>[
        Container(
          height: 250.0,
        ),
        const Text(
          'CRRE Help Line',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 20.0,
        ),
        const Text(
          'For further Updates',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.purpleAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () => {},
          child: const Text('call'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.purple)),
        ),
      ],
    ),
  );
}
