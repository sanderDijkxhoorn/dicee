import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 0;
  int rightDice = 0;

  void changeDiceLeft() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
    });
  }

  void changeDiceRight() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

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
                        changeDiceLeft();
                      },
                      child: Image.asset('images/dice$leftDice.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        changeDiceRight();
                      },
                      child: Image.asset('images/dice$rightDice.png')),
                ),
              ],
            ),
          ),
        ),
      );
}
