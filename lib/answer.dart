import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerfunction;
  final String answerchoice;

  Answer(this.answerchoice, this.answerfunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: answerfunction,
        child: Text(answerchoice),
      ),
    );
  }
}
