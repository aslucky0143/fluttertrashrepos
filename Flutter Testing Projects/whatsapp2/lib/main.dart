// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              launch(
                "https://www.google.com/",
                forceWebView: true,
                enableDomStorage: true,
                enableJavaScript: true,
              );
            },
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: Colors.lightGreen,
            ),
            child: Wrap(
              children: [
                Text(
                  'SignIn',
                  style: TextStyle(fontSize: 24),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class WebView extends StatelessWidget {
  const WebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
