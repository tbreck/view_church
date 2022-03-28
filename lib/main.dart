import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 5, 44, 72),
            // title: const Text('View Church'),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/mainlogo.png',
                  fit: BoxFit.contain,
                  height: 32,
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('I am a Button'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/logo.png'),
                    const Text('New Logo Testing')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
