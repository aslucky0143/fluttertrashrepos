// ignore_for_file: prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/forgetpassword.dart';
import 'Constants.dart';
import 'LoginScreen.dart';
import 'Spalshscreen.dart';
import 'second_page.dart';
import 'Screens/Loged.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'Screens/forgetpassword.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ForgetPasssword.routeName: (context) => ForgetPasssword(),
        MySecondPage.routeName: (context) => const MySecondPage(),
        MyFirstpage.routeName: (context) => const MyFirstpage(),
        LogedScreen.routeName: (context) => const LogedScreen(),
      },
      home: const Scaffold(
        body: SplashToNXT(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
