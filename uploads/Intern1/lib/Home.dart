// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
  }) : super(key: key);

  get commentController => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 104,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(10, 10),
                    blurRadius: 10,
                    spreadRadius: .8,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.location_on),
                        Text(' Sector-44,Real Estate,Sector-62,Gurugam'),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(25, 15, 15, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 0, 12, 0),
                                  child: Icon(Icons.search),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search for a Service',
                                        alignLabelWithHint: true,
                                        prefixIconColor: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.whatsapp,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Group 8131.jpg',
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.none,
                ),
              ),
              child: Container(),
            ),
            Flexible(
              child: GridView(
                padding: EdgeInsets.all(15),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 16 / 9,
                    crossAxisSpacing: 42,
                    mainAxisSpacing: 42),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 2331.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/Rectangle 2331.jpg'),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 15, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Hi',
                                    style: TextStyle(color: Colors.white)),
                                Text('Hi',
                                    style: TextStyle(color: Colors.white)),
                              ]),
                        ),
                      )),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 2331.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
