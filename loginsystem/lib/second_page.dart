import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Constants.dart';
import 'LoginScreen.dart';
import 'main.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);
  static const routeName = 'SecondPage';
  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              MainLoginLogo(),
              Text(
                'Register Here',
                style: GoogleFonts.squarePeg(
                  fontSize: 40,
                ),
              ),
              Text(
                "We're happy to have a customer",
                style: GoogleFonts.squarePeg(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_obsureicon,
                  maxLength: 16,
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
                  child: Text(
                    'SignUp',
                    style: GoogleFonts.squarePeg(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  onPressed: () async {
                    try {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                                child: CircularProgressIndicator());
                          });
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: _username.text,
                        password: _password.text,
                      )
                          .then((value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('User Created'),
                          ),
                        );
                        Navigator.of(context)
                            .popAndPushNamed(MyFirstpage.routeName);
                      });
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("The password provided is too weak."),
                          ),
                        );
                        Navigator.of(context).pop();
                      } else if (e.code == 'email-already-in-use') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('This email is already registered'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(MyFirstpage.routeName);
                      },
                      child: Row(
                        children: [
                          Text(
                            "Alresdy Have An Account ",
                            style: GoogleFonts.squarePeg(
                                color: Colors.grey[700], fontSize: 24),
                          ),
                          Text(
                            'Click Here To Login!!',
                            style: GoogleFonts.squarePeg(
                                color: Colors.blue, fontSize: 24),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
