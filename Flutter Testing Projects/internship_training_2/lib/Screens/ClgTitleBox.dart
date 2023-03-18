// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClgBox extends StatelessWidget {
  const ClgBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'GHJK Engineering college',
              style: GoogleFonts.lato(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            RatingBox()
          ],
        ),
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  const RatingBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(7, 4.3, 3.86, 3.86),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 39, 194, 0),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Text(
            '4.3',
            style: TextStyle(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
            child: Icon(Icons.star, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DrawableListClList extends StatelessWidget {
  const DrawableListClList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(18, 6, 18, 12),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(5)),
            child: Text('MVSH Engineering college '),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(18, 6, 18, 12),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(5)),
            child: Text('MVSH Engineering college '),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(18, 6, 18, 12),
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(5)),
            child: Text('MVSH Engineering college '),
          ),
        ],
      ),
    );
  }
}
