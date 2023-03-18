import 'package:flutter/material.dart';
import 'constants.dart';
import 's.dart';
import 'page2.dart';
import 'main2.dart';
import 'flutter4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyPag(),
      routes: {
        MyPage.routename: (_) => const MyPage(),
        Back.routename: (_) => const Back(),
        MyApp2.routename: (_) => const MyApp2(),
        Flutter4.routename: (_) => const Flutter4(),
      },
    );
  }
}

class MyPag extends StatefulWidget {
  const MyPag({Key? key}) : super(key: key);

  @override
  State<MyPag> createState() => _MyPagState();
}

class _MyPagState extends State<MyPag> {
  bool value = true;
  bool? val2 = true;
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: const Text("Flutter Coding Exercise"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: blue,
        child: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).pushNamed(Flutter4.routename);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/CRR_Logo.png"),
            Switch(
              value: value,
              onChanged: (value) => setState(
                () {
                  this.value = value;
                },
              ),
            ),
            Checkbox(
              value: val2,
              onChanged: (value) => setState(() {
                val2 = value;
              }),
            ),
            DropdownButton(
              iconEnabledColor: const Color.fromARGB(0, 0, 4, 255),
              dropdownColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 8,
              isExpanded: true,
              isDense: true,
              iconDisabledColor: Colors.amber,
              iconSize: 100,
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(
                  () {
                    dropdownvalue = newValue!;
                  },
                );
              },
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Checkbox(
                      value: value,
                      activeColor: Colors.amber,
                      onChanged: (newValue) {
                        setState(() {
                          value = newValue!;
                        });
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
