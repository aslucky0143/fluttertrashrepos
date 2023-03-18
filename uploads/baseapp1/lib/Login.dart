// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routename = "Login";

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int n = 1;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF45048a),
              Colors.deepPurple,
              Colors.purpleAccent,
              Colors.purple,
              Color(0xFF45048a),
              Color(0xFF45048a),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Center(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Card(
              elevation: 30.0,
              shadowColor: Colors.purpleAccent,
              child: SizedBox(
                width: 350,
                height: 550,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(children: [
                    const Image(
                      image: AssetImage('assets/CRR_Logo.png'),
                      height: 200,
                      width: 200,
                    ), //CircleAvatar
                    //CirclAvatar
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    const Text(
                      'Login/SignUp',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF0e0469),
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ),
                    //Userid
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'User Id',
                      ),
                    ),
                    //Password
                    TextField(
                      obscureText: n == 1 ? true : false,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: IconButton(
                            icon: n == 1
                                ? const Icon(Icons.lock)
                                : const Icon(
                                    Icons.no_encryption_gmailerrorred_outlined),
                            onPressed: () {
                              setState(() {
                                n == 1 ? n = 0 : n = 1;
                              });
                            },
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(Navigator.defaultRouteName);
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          )),
        ),
      );
}
