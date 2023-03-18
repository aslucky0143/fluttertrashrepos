// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomSheet: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () => _controller.jumpToPage(4),
                child: Text(
                  'Skip',
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  count: 5,
                  controller: _controller,
                  effect: WormEffect(
                      activeDotColor: Colors.teal, dotHeight: 1, radius: 1),
                  onDotClicked: (index) {
                    _controller.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
              ),
              TextButton(
                onPressed: () => _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                ),
                child: Text(
                  'Next',
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 80),
          child: PageView(
            onPageChanged: (curr) {},
            controller: _controller,
            children: [
              Container(
                color: Colors.deepOrange,
                child: Icon(Icons.favorite),
              ),
              Container(
                color: Colors.teal,
                child: Icon(Icons.adb),
              ),
              Container(
                color: Colors.lime,
                child: Icon(Icons.laptop_chromebook_outlined),
              ),
              Container(
                color: Colors.lime,
                child: Icon(Icons.laptop_chromebook_outlined),
              ),
              Container(
                color: Colors.lime,
                child: Icon(Icons.laptop_chromebook_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
