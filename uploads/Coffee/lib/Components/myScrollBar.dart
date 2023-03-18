// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScrolBar extends StatefulWidget {
  const MyScrolBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyScrolBar> createState() => _MyScrolBarState();
}

class _MyScrolBarState extends State<MyScrolBar> {
  int stateMenu = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          myScrollitem('Cappuccino', 0),
          myScrollitem('Expresso', 1),
          myScrollitem('Latte', 2),
          myScrollitem('BlackCoffee', 3),
          myScrollitem('Robusta', 4),
          myScrollitem('Decaf', 5),
          Container(),
        ],
      ),
    );
  }

  TextButton myScrollitem(String title, int state) {
    return TextButton(
      onPressed: () {
        setState(() {
          stateMenu = state;
        });
      },
      child: Text(
        title,
        style: GoogleFonts.oleoScriptSwashCaps(
          color: stateMenu == state ? Colors.orange : Colors.grey[600],
          fontSize: 22,
        ),
      ),
    );
  }
}
