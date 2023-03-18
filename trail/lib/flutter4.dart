import 'package:flutter/material.dart';

class Flutter4 extends StatelessWidget {
  const Flutter4({Key? key}) : super(key: key);
  static const routename = "flutter 4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            child: const ListTile(
              title: Text("List"),
              leading: Icon(Icons.home),
              trailing: IconButton(
                  onPressed: null, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ),
          Container(
            color: Colors.red,
            child: const ListTile(
              title: Text("List"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      ),
    );
  }
}
