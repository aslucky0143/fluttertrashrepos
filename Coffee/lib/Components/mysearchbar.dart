import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 20, 25, 33),
        //rgb(20,25,33)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 2, 0, 0),
        child: TextFormField(
          style: GoogleFonts.oleoScriptSwashCaps(
            color: Colors.white38,
          ),
          decoration: InputDecoration(
            labelText: 'Find Your Coffee ...',
            labelStyle: GoogleFonts.oleoScriptSwashCaps(
              color: Colors.white38,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white38,
              size: 22,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
