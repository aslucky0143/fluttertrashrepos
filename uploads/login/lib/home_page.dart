import 'package:login/Library/Logout.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'Library/Library.dart';
import 'Library/Home.dart';
import 'Library/DashBoard.dart';
import 'Library/Results.dart';
import 'Library/Profile.dart';
import 'Library/FeedBack.dart';
import 'Library/Logout.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routename = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Image.asset('assets/CRR_Logo_Black.png'),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () => {
                  setState(() {
                    a = 1;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 1 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                onTap: () => {
                  setState(() {
                    a = 2;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 2 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.book_rounded),
                title: const Text('Library'),
                onTap: () => {
                  setState(() {
                    a = 3;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 3 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.radar_sharp),
                title: const Text('Results'),
                onTap: () => {
                  setState(() {
                    a = 4;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 4 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () => {
                  setState(() {
                    a = 5;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 5 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.border_color),
                title: const Text('Feedback'),
                onTap: () => {
                  setState(() {
                    a = 6;
                  }),
                  Navigator.of(context).pop()
                },
                selected: a == 6 ? true : false,
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
                onTap: () => {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Logout'),
                            content: Text("Logged Out Successfully"),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context)
                                        .pushReplacementNamed(Home.routename);
                                  },
                                  child: Text('data'))
                            ],
                          ))
                },
              ),
            ],
          ),
        ),
      ),
      appBar: HomeAppBar(context),
      body: AppBody(a: a),
    );
  }

  AppBar HomeAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.account_circle_outlined),
          onPressed: () {
            Navigator.of(context).pushNamed(Login.routename);
          },
        )
      ],
      title: const Text('Hello, User'),
      foregroundColor: Colors.purple,
      toolbarHeight: 75,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
    required this.a,
  }) : super(key: key);

  final int a;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          a == 1
              ? const LibHome()
              : a == 2
                  ? const LibDashBoard()
                  : a == 3
                      ? const LibLibrary()
                      : a == 4
                          ? const LibResults()
                          : a == 5
                              ? const LibProfile()
                              : a == 6
                                  ? const LibFeedBack()
                                  : const LibLogout()
        ],
      ),
    );
  }
}
