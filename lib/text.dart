//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RandomText extends StatelessWidget {
  final String text;
  const RandomText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
