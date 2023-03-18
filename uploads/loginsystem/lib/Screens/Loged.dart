import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogedScreen extends StatelessWidget {
  const LogedScreen({Key? key}) : super(key: key);
  static const routeName = 'Loged';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Log Out'),
          onPressed: () async {
            await FirebaseAuth.instance
                .signOut()
                .then((value) => Navigator.of(context).pop());
          },
        ),
      ),
    );
  }
}
