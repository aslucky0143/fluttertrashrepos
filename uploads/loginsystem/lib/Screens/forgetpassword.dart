import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../LoginScreen.dart';

import '../Constants.dart';
import '../second_page.dart';

class ForgetPasssword extends StatelessWidget {
  ForgetPasssword({Key? key}) : super(key: key);
  static const routeName = 'ForgetPassword';
  TextEditingController _username = TextEditingController();
  Future<void> _resetPassword(String email) async {}

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
                Text('FORGET PASSWORD?',
                    style: GoogleFonts.squarePeg(
                      fontSize: 40,
                    )),

                const SizedBox(
                  height: 30,
                ),
                //USERNAME
                Container(
                  height: 60.0,
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

                //CREATE USER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () async {
                          if (_username.text != '') {
                            try {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  });
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(email: _username.text)
                                  .then((value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Reset Email Link Sucessfully'),
                                  ),
                                );
                                Navigator.of(context)
                                    .popAndPushNamed(MyFirstpage.routeName);
                              });
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
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
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Enter Username')));
                          }
                        },
                        child: Text(
                          'Send Password Reset Link to Email',
                          style: GoogleFonts.squarePeg(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
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
