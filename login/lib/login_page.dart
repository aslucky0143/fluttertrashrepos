// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'new.dart';
import 'Constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  static const routename = "Login";

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int n = 1;
  double he = 102, wi = 100;
  _LogingoogleLaunch() {
    const url = 'https://www.google.com';
    launch(url, forceSafariVC: true, forceWebView: true);
  }

  _LogingitLaunch() {
    const url = 'https://www.github.com';
    launch(url,
        forceSafariVC: true,
        forceWebView: true,
        statusBarBrightness: Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    var iconButton = IconButton(
      icon: n == 1
          ? const Icon(Icons.lock)
          : const Icon(Icons.no_encryption_gmailerrorred_outlined),
      onPressed: () {
        setState(() {
          n == 1 ? n = 0 : n = 1;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: boxDecoration,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 30.0,
              shadowColor: Colors.purpleAccent,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/CRR_Logo.png'),
                        fit: BoxFit.fitHeight,
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF0e0469),
                          fontWeight: FontWeight.w500,
                        ), //Textstyle1
                      ), //Text
                      SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email/UserID/Phone Number',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextEntry(iconButton, 'Password', n),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () => _LogingoogleLaunch(),
                                icon: Image.asset('assets/Login/Google.png',
                                    height: he, width: wi)),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () => _LogingitLaunch(),
                                icon: Image.asset('assets/Login/Git.png',
                                    height: he, width: wi)),
                          ],
                        ),
                      ),

                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(NewUser.routename);
                          },
                          child: const Text(
                              'New? Click Here to Create a new Account'))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
