import 'package:flutter/material.dart';

class WonGame extends StatelessWidget {
  final Function winfunction;
  final int resultScore;

  String get resultPhrase {
    var resultPhrase = 'You did it !';
    if (resultScore == 15) {
      resultPhrase = 'Not Bad ! Do Try Again :)';
    } else if (resultScore < 15) {
      resultPhrase = 'Well That\'s Bad !, Try Again ';
    } else {
      resultPhrase = 'Congrats ! You Won';
    }
    return resultPhrase;
  }

  WonGame(this.resultScore, this.winfunction);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score : $resultScore",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: winfunction,
                child: Text('Play Again'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
