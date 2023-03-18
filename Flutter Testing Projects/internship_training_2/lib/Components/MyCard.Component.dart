// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MySortingList.dart';

class MyCardHome extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String _Image, _Heading, _subject;
  const MyCardHome(this._Image, this._Heading, this._subject);

  @override
  State<MyCardHome> createState() => _MyCardHomeState();
}

class _MyCardHomeState extends State<MyCardHome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: (context),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(42))),
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(38, 28, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Sort By',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
                Divider(
                  endIndent: 38,
                  color: Colors.grey,
                  height: .1,
                ),
                MySortingList()
              ],
            ),
          );
        },
      ),
      child: Stack(
        children: [
          Container(
            height: 158,
            width: 354,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  widget._Image,
                ),
              ),
            ),
          ),
          Container(
            height: 158.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Colors.black,
                  Colors.grey.withOpacity(0.0),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          SizedBox(
            height: 158,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(21, 19, 0, 0),
                  child: Text(
                    widget._Heading,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 202,
                  height: 81,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 19, 0, 0),
                    child: Text(
                      widget._subject,
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
