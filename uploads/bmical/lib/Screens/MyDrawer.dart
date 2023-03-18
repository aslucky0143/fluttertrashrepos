// ignore: file_names
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Sai Lucky (The Developer)"),
            accountEmail: Text(
              "luckydevs0143@gmmail.com",
            ),
          )
        ],
      ),
    );
  }
}
