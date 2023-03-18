import 'package:flutter/material.dart';

class LibLibrary extends StatelessWidget {
  const LibLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderLogo(),
          LabeledContainer(),
        ],
      ),
    );
  }

  Padding HeaderLogo() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Image.asset(
        'assets/CRR_Logo_Black.png',
      ),
    );
  }

  Container LabeledContainer() {
    return Container(
      color: Color.fromARGB(255, 109, 39, 175),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: const [
                Text(
                  'CRRE Central Library',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'A Good Book Is equals to 1000 Good Friends',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
