// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_drawer/bottom_drawer.dart';
import 'Components/MyCardHome.dart';
import 'Components/MySearchComponent.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  BottomDrawerController controller = BottomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 14, 60, 110),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(42),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(37, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            'Find your own way',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 42, 37, 0),
                              child: FlutterBadge(
                                icon: Icon(Icons.notifications,
                                    color: Colors.white),
                                itemCount: 1,
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'Search in 600 colleges around!',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MySearchBar(),
                    ],
                  ),
                ),
              ),
              MyCards(),
            ],
          ),
        ),
      ),
    );
  }
}
