// ignore_for_file: file_names

import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MaterialApp(
      home: Back(),
      debugShowCheckedModeBanner: false,
    ));

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
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
                  padding: const EdgeInsets.all(20.0),
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
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
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
