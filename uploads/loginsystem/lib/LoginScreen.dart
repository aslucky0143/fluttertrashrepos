import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/forgetpassword.dart';

import 'Constants.dart';
import 'Screens/Loged.dart';
import 'second_page.dart';

class MyFirstpage extends StatefulWidget {
  const MyFirstpage({Key? key}) : super(key: key);
  static const routeName = 'MyFirstPage';

  @override
  State<MyFirstpage> createState() => _MyFirstpageState();
}

class _MyFirstpageState extends State<MyFirstpage> {
  CollectionReference usersData =
      FirebaseFirestore.instance.collection('users');
  bool _obsureicon = false;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black12,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                //LOGO
                MainLoginLogo(),
                //MAIN MSG
                Text('WELCOME AGAIN',
                    style: GoogleFonts.squarePeg(
                      fontSize: 40,
                    )),
                //SUB MSG
                Text(
                  "Hello, We've been Missed you",
                  style: GoogleFonts.squarePeg(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //USERNAME
                Container(
                  height: 55.0,
                  width: 300.0,
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
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
                    style: GoogleFonts.squarePeg(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    controller: _username,
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
                //PASSWORD
                Container(
                  height: 50.0,
                  width: 300.0,
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
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
                    controller: _password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_obsureicon,
                    maxLength: 16,
                    style: GoogleFonts.squarePeg(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: _obsureicon == false
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obsureicon = !_obsureicon;
                          });
                        },
                      ),
                      hintText: 'Password',
                      border: InputBorder.none,
                      counterText: '',
                    ),
                  ),
                ),
                //FORGET PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ForgetPasssword.routeName);
                          },
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.squarePeg(fontSize: 20),
                          )),
                    )
                  ],
                ),
                //SIGNIN
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
                    child: Text('SignIn',
                        style: GoogleFonts.squarePeg(fontSize: 30)),
                    onPressed: () async {
                      try {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            });
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: _username.text,
                          password: _password.text,
                        )
                            .then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Login Success'),
                            ),
                          );
                          Navigator.of(context)
                              .popAndPushNamed(LogedScreen.routeName);
                        });
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'wrong-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Wrong Password"),
                            ),
                          );
                          Navigator.of(context).pop();
                        } else if (e.code == 'user-not-found') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('User Not Found'),
                            ),
                          );
                          Navigator.of(context).pop();
                        } else {}
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('unknown Error Occured'),
                          ),
                        );
                      }
                    },
                  ),
                ),
                //CREATE USER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(MySecondPage.routeName);
                        },
                        child: Row(
                          children: [
                            Text(
                              "Don't Have Account ",
                              style: GoogleFonts.squarePeg(
                                fontSize: 20,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              'Click Here To Register',
                              style: GoogleFonts.squarePeg(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
