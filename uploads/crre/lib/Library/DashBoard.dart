import 'package:flutter/material.dart';

class LibDashBoard extends StatelessWidget {
  const LibDashBoard({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Image.asset(
        'assets/CRR_Logo_Black.png',
      ),
    );
  }

  Container LabeledContainer() {
    return Container(
      color: const Color.fromARGB(255, 109, 39, 175),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: const [
                Text(
                  'CRRE DashBoard',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Every Notification Will Be Here',
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
