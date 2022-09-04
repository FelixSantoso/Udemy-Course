//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';

class TextController extends StatelessWidget {
  final String text;
  final VoidCallback changeText;
  const TextController(this.text, this.changeText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RandomText(text),
        ElevatedButton(
          onPressed: changeText,
          child: Text('Tap to change text'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent[400],
            foregroundColor: Colors.black,
          ),
        )
      ],
    );
  }
}
