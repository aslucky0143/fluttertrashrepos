// ignore_for_file: file_names, prefer_const_constructors_in_immutables, prefer_const_constructors, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/tester.dart';

class MySortingList extends StatefulWidget {
  MySortingList({Key? key}) : super(key: key);

  @override
  State<MySortingList> createState() => _MySortingListState();
}

class _MySortingListState extends State<MySortingList> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          // ignore: prefer_const_constructors
          MySortTile(ImageIcon(AssetImage('assets/education.png')),
              'Bachelor of Technology', 1),
          MySortTile(ImageIcon(AssetImage('assets/sketch.png')),
              'Bachelor of Architecture', 2),
          MySortTile(
              ImageIcon(AssetImage('assets/pharmacy.png')), 'Pharmacy', 3),
          MySortTile(ImageIcon(AssetImage('assets/balance.png')), 'Law', 4),
          MySortTile(
              ImageIcon(AssetImage('assets/management.png')), 'Management', 5),
        ],
      ),
    );
  }

  ListTile MySortTile(ImageIcon icondata, String title, int? index) {
    int? currindex = 1;
    return ListTile(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyCollege()));
      },
      leading: icondata,
      trailing: Radio<int>(
        groupValue: index,
        value: currindex,
        onChanged: (index2) {
          setState(() {
            currindex = index2;
          });
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyCollege()));
        },
      ),
      title: Text(
        title,
        style: GoogleFonts.lato(fontWeight: FontWeight.w800, fontSize: 18),
      ),
    );
  }
}
