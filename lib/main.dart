//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'text_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int textIndex = 0;
  static const listOfText = ['hey', 'how', 'are', 'you?'];

  void changeText() {
    setState(() {
      textIndex = ++textIndex % listOfText.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First Assignment'),
          ),
          body: TextController(listOfText[textIndex], changeText)),
    );
  }
}
