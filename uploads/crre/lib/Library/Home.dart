import 'package:flutter/material.dart';

class LibHome extends StatelessWidget {
  const LibHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/CRR_Logo.png'),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'CRRE Home',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
