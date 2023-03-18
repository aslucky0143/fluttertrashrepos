import 'package:flutter/material.dart';
import 'login_page.dart';
import 'Constants.dart';
import 'package:url_launcher/url_launcher.dart';

class NewUser extends StatefulWidget {
  static const routename = "NewUser";

  const NewUser({Key? key}) : super(key: key);

  @override
  State<NewUser> createState() => _LoginState();
}

class _LoginState extends State<NewUser> {
  int n = 1;
  double he = 102, wi = 100;
  String title = '';
  _SignUpgoogleLaunch() {
    const url = 'https://www.google.com';
    launch(url, forceSafariVC: true, forceWebView: true);
  }

  _SignUpgitLaunch() {
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
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 30.0,
              shadowColor: Colors.purpleAccent,
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/CRR_Logo.png'),
                        fit: BoxFit.fitHeight,
                        height: 200,
                        width: 200,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'SignUp',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFF0e0469),
                          fontWeight: FontWeight.w500,
                        ), //Textstyle1
                      ), //Text
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email/Phone Number',
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextEntry(iconButton, 'Password', n),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('SignUp'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () => _SignUpgoogleLaunch(),
                                icon: Image.asset('assets/Login/Google.png',
                                    height: he, width: wi)),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () => _SignUpgitLaunch(),
                                icon: Image.asset('assets/Login/Git.png',
                                    height: he, width: wi)),
                          ],
                        ),
                      ),

                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Login.routename);
                          },
                          child: const Text(
                              'Already Have an account? Click Here To Login'))
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
