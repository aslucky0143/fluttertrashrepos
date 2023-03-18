// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MyCollegeDetails extends StatefulWidget {
  const MyCollegeDetails({Key? key}) : super(key: key);

  @override
  State<MyCollegeDetails> createState() => _MyCollegeDetailsState();
}

class _MyCollegeDetailsState extends State<MyCollegeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 14, 60, 110),
          ),
          child: Text('Apply Now'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 14, 60, 110),
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child:
                            Icon(Icons.bookmark_outline, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset('assets/DetailedAssets/banner1.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 16, 0, 0),
                child: SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GHJK Engineering college',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 298,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Felis consectetur nulla pharetra praesent hendrerit\n vulputate viverra. Pellentesque aliquam tempus faucibus\n est.',
                              style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.green,
                        ),
                        child: Column(
                          children: [
                            Text(
                              '4.3',
                              style: GoogleFonts.lato(color: Colors.white),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PlutoMenuBar(
                menus: [
                  PlutoMenuItem(
                    title: 'About College',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Hostel Facilities',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Q & A',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Events',
                    onTap: () {},
                  ),
                ],
              ),
              HostelBedNoSelector(),
            ],
          ),
        ),
      ),
    );
  }
}

class HostelBedNoSelector extends StatefulWidget {
  const HostelBedNoSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<HostelBedNoSelector> createState() => _HostelBedNoSelectorState();
}

class _HostelBedNoSelectorState extends State<HostelBedNoSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyMenuIconHostel(4),
        MyMenuIconHostel(3),
        MyMenuIconHostel(2),
        MyMenuIconHostel(1),
      ],
    );
  }

  int abhi = 4;

  OutlinedButton MyMenuIconHostel(int number) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor:
              abhi != number ? Colors.white : Color.fromARGB(255, 14, 60, 110)),
      onPressed: () {
        setState(() {
          debugPrint('$abhi $number');
          abhi != number ? abhi = number : null;
          debugPrint('$abhi $number');
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/bed (3).png',
            color: abhi == number
                ? Colors.white
                : Color.fromARGB(255, 14, 60, 110),
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            number.toString(),
            style: GoogleFonts.lato(
                color: abhi == number
                    ? Colors.white
                    : Color.fromARGB(255, 14, 60, 110),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
