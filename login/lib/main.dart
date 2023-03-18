import 'Splash.dart';
import 'home_page.dart';
//import 'Nav/DashBoard.dart';
//import 'Nav/FeedBack.dart';
//import 'Nav/Home.dart';
//import 'Nav/Library.dart';
//import 'Nav/Profile.dart';
//import 'Nav/Results.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'new.dart';

int a = 0;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login System',
      home: const SplashToNXT(),
      routes: {
        NewUser.routename: (_) => const NewUser(),
        Login.routename: (_) => const Login(),
        Home.routename: (_) => const Home(),
        //DashBoard.routename: (_) => DashBoard(),
        //NavHome.routename: (_) => NavHome(),
        //Library.routename: (_) => Library(),
        //Results.routename: (_) => Results(),
        //Profile.routename: (_) => Profile(),
        //FeedBack.routename: (_) => FeedBack(),
      },
    );
  }
}
