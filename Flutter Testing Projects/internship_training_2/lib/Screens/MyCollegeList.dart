// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, file_names, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_training_2/Components/MySearchComponent.dart';
import 'package:internship_training_2/Screens/tester.dart';

import 'MyCollegeDetails.dart';

class MyCollegeList extends StatelessWidget {
  const MyCollegeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 60, 110),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(42),
                )),
            child: MySearchBar(),
          ),
          MyCollegeCard(
            Banner: 'assets/banner1.png',
            CollegeTitle: 'GHJK Engineering college',
            Description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
            Rating: '4.3',
            iconsubtitle: 'More than 1000+ students have been placed',
            views: '468',
          ),
          MyCollegeCard(
            Banner: 'assets/banner3.png',
            CollegeTitle: 'Bachlor Of Technology',
            Description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
            Rating: '4.3',
            iconsubtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing ',
            views: '468',
          ),
          MyCollegeCard(
            Banner: 'assets/banner2.png',
            CollegeTitle: 'GHJK Engineering college',
            Description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
            Rating: '4.3',
            iconsubtitle: 'More than 1000+ students have been placed',
            views: '468',
          ),
        ],
      ),
    );
  }
}

class MyCollegeCard extends StatelessWidget {
  final String Banner, CollegeTitle, Rating, Description, iconsubtitle, views;
  const MyCollegeCard({
    Key? key,
    required this.Banner,
    required this.CollegeTitle,
    required this.Rating,
    required this.Description,
    required this.iconsubtitle,
    required this.views,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (builder) => MyCollegeDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(
                        Banner,
                      ),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 13, 13, 67),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.share, color: Colors.black),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                CollegeTitle,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.fromLTRB(7, 4.3, 3.86, 3.86),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 39, 194, 0),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  children: [
                                    Text(
                                      Rating,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(3, 0, 0, 0),
                                      child:
                                          Icon(Icons.star, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 170,
                                child: Text(
                                  Description,
                                  softWrap: true,
                                  style: GoogleFonts.lato(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 14, 60, 110),
                                  borderRadius: BorderRadius.circular(5.88),
                                ),
                                height: 21.58,
                                width: 77.48,
                                alignment: Alignment.center,
                                child: Text(
                                  'Apply Now',
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          endIndent: 12,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 0, 13, 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                      'assets/like 1.png',
                                    ),
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    iconsubtitle,
                                    style: GoogleFonts.lato(fontSize: 9),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.remove_red_eye_outlined),
                                  Text('$views +')
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
