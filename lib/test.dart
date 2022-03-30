import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 5, 44, 72),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/mainlogo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
            ], // Children
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    _launchGive();
                  },
                  child: const Text(
                    'Want to Give?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Card(
              child: Column(
                children: const <Widget>[
                  Divider(
                    height: 20,
                    thickness: 5,
                    indent: 0,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'Through a lifestyle of \nworship and obedience, \nwe make and deploy disciples \nwho glorify the Father.',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.web_outlined),
              label: 'Website',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages_outlined),
              label: 'Page 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages_rounded),
              label: 'Page 2',
            ),
          ],
        ),
      ),
    );
  }
}

_launchGive() async {
  const url = 'https://pushpay.com/g/viewchurch?src=hpp';
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }
  await (launch(url, enableJavaScript: true));
}

_launchWebsite() async {
  const url = 'https://viewchurch.org';
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }
  await (launch(url, enableJavaScript: true));
}

void onTabTapped(int index) {
  switch (index) {
    case 0:
      // ignore: void_checks
      return _launchWebsite();
    case 1:

    case 2:
  }
}
