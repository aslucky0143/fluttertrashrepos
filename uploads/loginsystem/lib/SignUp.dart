import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyFunctions extends StatefulWidget {
  const MyFunctions({Key? key}) : super(key: key);

  @override
  State<MyFunctions> createState() => _MyFunctionsState();
}

class _MyFunctionsState extends State<MyFunctions> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  SingleChildScrollView loginScreen(bool obsureicon,
      TextEditingController username, TextEditingController password) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          const Icon(
            Icons.android,
            size: 220,
          ),
          const Text(
            'HELLO AGAIN',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Welcome Back! we have been Missed You',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50.0,
            width: 300.0,
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
            ),
            child: TextFormField(
              controller: username,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Username',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50.0,
            width: 300.0,
            padding: const EdgeInsets.fromLTRB(12, 0, 0, 5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
            ),
            child: TextFormField(
              controller: password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !obsureicon,
              maxLength: 16,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: obsureicon == false
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      obsureicon = !obsureicon;
                    });
                  },
                ),
                hintText: 'Password',
                border: InputBorder.none,
                counterText: '',
              ),
            ),
          ),
          Container(
            height: 65.0,
            width: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            padding: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
              child: const Text('SignUp'),
              onPressed: () async {
                if (username.text != '' && password.text != '') {
                  // ignore: non_constant_identifier_names
                  DocumentReference CreateUser = FirebaseFirestore.instance
                      .collection('LoginCredentials')
                      .doc(username.text);
                  CreateUser.set({
                    'Username': username.text,
                    'Password': password.text
                  }).then((value) => {print('Success')});
                }
              },
            ),
          ),
          Container(
            height: 65.0,
            width: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            padding: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
              ),
              child: const Text('Click Here to Login'),
              onPressed: () async {
                if (username.text != '' && password.text != '') {
                  // ignore: non_constant_identifier_names
                  DocumentReference CreateUser = FirebaseFirestore.instance
                      .collection('LoginCredentials')
                      .doc(username.text);
                  CreateUser.set({
                    'Username': username.text,
                    'Password': password.text
                  }).then((value) => {print('Success')});
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
