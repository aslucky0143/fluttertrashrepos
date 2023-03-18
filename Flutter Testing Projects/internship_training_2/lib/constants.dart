// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

BottomNavigationBar MyBottomBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.shifting,
    unselectedIconTheme: IconThemeData(
      color: Colors.grey,
    ),
    selectedIconTheme: IconThemeData(
      color: Colors.white,
    ),
    currentIndex: 0,
    backgroundColor: Colors.amber,
    items: [
      BottomNavigationBarItem(
        backgroundColor: Color.fromARGB(255, 14, 60, 110),
        icon: Icon(Icons.home),
        label: 'search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark),
        label: 'saved',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.radar),
        label: 'saved',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'account',
      ),
    ],
  );
}
