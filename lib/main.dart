import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text('Dicee'),
            backgroundColor: Colors.red,
            elevation: 0,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/dice2.png',
                  width: 200,
                ),
                Image.asset(
                  'images/dice6.png',
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      );
}
