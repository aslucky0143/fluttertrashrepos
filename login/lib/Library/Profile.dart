import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LibProfile extends StatelessWidget {
  const LibProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Image.asset('assets/Login/lucky.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mr.Sai Lucky',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(225, 0, 0, 0),
                ),
              ),
              const Text(
                'Aslucky0143@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color.fromARGB(255, 107, 106, 114),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          launch("https://www.instagram.com/as_lucky_0143/",
                              forceSafariVC: true, forceWebView: true);
                        },
                        color: Colors.blueAccent,
                        icon: const Icon(Icons.facebook_outlined),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        color: Colors.green[400],
                        onPressed: () {
                          launch("https://www.google.com",
                              forceSafariVC: true, forceWebView: true);
                        },
                        icon: Image.asset('assets/Login/Google.png'),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          launch("https://twitter.com/AnjiSai8",
                              forceSafariVC: true, forceWebView: true);
                        },
                        icon: Image.asset('assets/Login/Twitter.png'),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          launch("https://www.linkedin.in",
                              forceSafariVC: true, forceWebView: true);
                        },
                        icon: Image.asset('assets/Login/LinkedIn.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Personal Data'),
                      onTap: () => {},
                      leading: const Icon(Icons.menu_book),
                    ),
                    ListTile(
                      title: const Text('Academics'),
                      onTap: () {},
                      leading: const Icon(Icons.bookmarks),
                    ),
                    ListTile(
                      title: const Text('Achivements'),
                      onTap: () {},
                      leading: const Icon(Icons.note_alt_rounded),
                    ),
                    ListTile(
                      title: const Text('Payments'),
                      onTap: () {},
                      leading: const Icon(Icons.lock),
                    ),
                    ListTile(
                      title: const Text('Memories'),
                      onTap: () {},
                      leading: const Icon(Icons.timer),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
