import 'Library/Logout.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'Constants.dart';
import 'Library/Library.dart';
import 'Library/Home.dart';
import 'Library/DashBoard.dart';
import 'Library/Results.dart';
import 'Library/Profile.dart';
import 'Library/FeedBack.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const name = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navvdrawer(context),
      appBar: HomeAppBar(context),
      bottomNavigationBar: Bottombar(),
      body: AppBody(a: a),
    );
  }

  ConvexAppBar Bottombar() {
    if (a != 6) {
      return ConvexAppBar(
          height: 50,
          onTap: (i) {
            i++;
            setState(() {
              a = i;
            }); //print(a);
          },
          backgroundColor: p,
          items: const [
            TabItem(
              icon: Icon(
                Icons.home,
                color: w,
              ),
              title: "Home",
              activeIcon: Icon(
                Icons.home,
                color: p,
              ),
            ),
            TabItem(
              icon: Icon(
                Icons.dashboard,
                color: w,
              ),
              title: "DashBoard",
              activeIcon: Icon(
                Icons.dashboard,
                color: p,
              ),
            ),
            TabItem(
              icon: Icon(
                Icons.radar,
                color: w,
              ),
              title: "Results",
              activeIcon: Icon(
                Icons.radar,
                color: p,
              ),
            ),
            TabItem(
              icon: Icon(
                Icons.book,
                color: w,
              ),
              title: "Library",
              activeIcon: Icon(
                Icons.book,
                color: p,
              ),
            ),
            TabItem(
              icon: Icon(
                Icons.person,
                color: w,
              ),
              title: "Profile",
              activeIcon: Icon(
                Icons.person,
                color: p,
              ),
            ),
          ]);
    } else {
      return ConvexAppBar(initialActiveIndex: 0, items: [
        const TabItem(
          icon: Icon(
            Icons.border_color,
            color: w,
          ),
          title: "FeedBack",
          activeIcon: Icon(
            Icons.border_color,
            color: p,
          ),
        ),
        const TabItem(
          icon: Icon(
            Icons.help,
            color: w,
          ),
          title: "Get Help?",
          activeIcon: Icon(
            Icons.help,
            color: p,
          ),
        ),
      ]);
    }
  }

  Drawer Navvdrawer(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: w,
                      radius: 40,
                      child: Image.asset('assets/Login/lucky.png'),
                    ),
                    const SizedBox(width: 40),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("\nMr.Sai Lucky"),
                        Text(
                          "B.Tech",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
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
              onTap: () => {LogOutDialog(context)},
            ),
          ],
        ),
      ),
    );
  }
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS
//FUNCTIONS

  Future<dynamic> LogOutDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Logout'),
              content: const Text("Logged Out Successfully"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context)
                          .pushReplacementNamed(Home.routename);
                    },
                    child: const Text('data'))
              ],
            ));
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
      foregroundColor: b,
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
                      ? const LibResults()
                      : a == 4
                          ? const LibLibrary()
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
