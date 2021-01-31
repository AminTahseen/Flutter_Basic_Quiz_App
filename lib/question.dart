import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity, // Take as much space that is available
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
