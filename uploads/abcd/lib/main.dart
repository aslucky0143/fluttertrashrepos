import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Sir C.R. Reddy College Of Engineering',
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Text('Hello, User'),
        foregroundColor: Colors.purple,
        toolbarHeight: 75,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: body(),
      ),
      
    );
  }

  Center body() {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 250.0,
          ),
          const Text(
            'CRRE Help Line',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 20.0,
          ),
          const Text(
            'For further Updates',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.purpleAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text('call'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple)),
          ),
        ],
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Image.asset('assets/CRR_Logo_Black.png'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            selected: true,
            hoverColor: Colors.black38,
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.book_rounded),
            title: const Text('Library'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.radar_sharp),
            title: const Text('Results'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    )
    );
  }
}
