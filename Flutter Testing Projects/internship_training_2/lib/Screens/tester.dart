// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:internship_training_2/constants.dart';

import 'MyCollegeList.dart';

class MyCollege extends StatefulWidget {
  const MyCollege({Key? key}) : super(key: key);

  @override
  State<MyCollege> createState() => _MyCollegeState();
}

class _MyCollegeState extends State<MyCollege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(),
      body: SafeArea(
        child: MyCollegeList(),
      ),
    );
  }
}
