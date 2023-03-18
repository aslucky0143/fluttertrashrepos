// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../Constants.dart';
import 'MyMenubar.dart';
import 'myScrollBar.dart';
import 'mysearchbar.dart';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/Logo.png',
                    ),
                    alignment: AlignmentDirectional.centerEnd),
              ),
              child: Text(
                'Find the best \ncoffee for you\n',
                style: MyStyle(42),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: [
                MySearchBar(),
                MyScrolBar(),
                SizedBox(
                  height: 15,
                ),
                MyItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
