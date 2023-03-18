import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Image.asset('assets/CRR_Logo_Black.png'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: i == 0 ? true : false,
              onTap: () => {
                setState(() {
                  i = 0;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              selected: i == 1 ? true : false,
              onTap: () => {
                setState(() {
                  i = 1;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_rounded),
              title: const Text('Library'),
              selected: i == 2 ? true : false,
              onTap: () => {
                setState(() {
                  i = 2;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.radar_sharp),
              title: const Text('Results'),
              selected: i == 3 ? true : false,
              onTap: () => {
                setState(() {
                  i = 3;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              selected: i == 4 ? true : false,
              onTap: () => {
                setState(() {
                  i = 4;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.border_color),
              title: const Text('Feedback'),
              selected: i == 5 ? true : false,
              onTap: () => {
                setState(() {
                  i = 5;
                }),
                Navigator.of(context).pop(),
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              selected: i == 6 ? true : false,
              onTap: () => {
                setState(() {
                  i = 6;
                }),
                Navigator.of(context).pop(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
