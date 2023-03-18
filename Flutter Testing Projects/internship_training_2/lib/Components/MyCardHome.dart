// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'MyCard.Component.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(37, 12, 37, 37),
      child: Column(
        children: [
          MyCardHome('assets/grad1.png', 'Top Colleges',
              'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.'),
          SizedBox(
            height: 12,
          ),
          MyCardHome('assets/school.png', 'Top Schools',
              'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.'),
          SizedBox(
            height: 12,
          ),
          MyCardHome('assets/exam.png', 'Exam',
              'Find an end to end information about the exams that are happening in India'),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
