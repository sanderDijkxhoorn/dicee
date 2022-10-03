import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        print('Left button got pressed');
                      },
                      child: Image.asset('images/dice2.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        print('Gratis pizza voor iedereen');
                      },
                      child: Image.asset('images/dice6.png')),
                ),
              ],
            ),
          ),
        ),
      );
}
