import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Constants.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = '';
  String text = "";
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  void _setText() async {
    setState(() {
      text = title;

      String url = 'https://wa.me/+91' + text;
      launch(url);
    });
    await users.add(
      {'ID': title},
    ).then((value) => print('user added'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 30.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 250,
                  width: 400,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Login/WhatsApp.png',
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // ignore: prefer_const_constructors
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                label: Text(
                                    "Enter the Number (Only for indian numbers)")),
                            onChanged: (value) => title = value,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 69, 210, 74)),
                            onPressed: _setText,
                            child: const Text("Go"),
                          )
                        ],
                      ),
                    ),
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
