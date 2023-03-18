import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();
  Color color2 = const Color.fromARGB(255, 9, 38, 187);
  String a = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: const BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 100, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                        color: color2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 190, 10, 0),
                child: Column(
                  children: [
                    TextField(
                      controller: _emailTEC,
                      keyboardType: TextInputType.emailAddress,
                      decoration: Inp(
                          'abc@eample.com', 'Email', const Icon(Icons.mail)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _passwordTEC,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      maxLength: 4,
                      decoration: Inp(
                        '****',
                        'PIN',
                        const Icon(Icons.lock),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _emailTEC.text,
                          password: _passwordTEC.text,
                        );
                      },
                      child: Column(
                        children: [
                          Text(a),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  InputDecoration Inp(String hint, String label, Icon preicon) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 14, 55, 203),
      ),
    );
    return InputDecoration(
      iconColor: color2,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      prefixIcon: preicon,
      prefixIconColor: Colors.amber,
      labelText: label,
      hintText: hint,
      border: const OutlineInputBorder(),
    );
  }
}
