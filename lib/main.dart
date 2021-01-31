import 'package:flutter/material.dart';
import './win.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questionList = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your hobby ?',
      'answers': [
        {'text': 'Play Games', 'score': 2},
        {'text': 'Workout', 'score': 7},
        {'text': 'Learn Things', 'score': 10},
        {'text': 'Do Nothing', 'score': 0},
      ]
    },
    {
      'questionText': 'What is your favourite food ?',
      'answers': [
        {'text': 'Chicken Tikka', 'score': 8},
        {'text': 'Bun Kabab', 'score': 10},
        {'text': 'Biryani', 'score': 6},
        {'text': 'Noodles', 'score': 4},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < questionList.length) {
      setState(() {
        _questionIndex++;
      });
      print('Answer Chosen !');
    } else {}
  }

  void _startAgain() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < questionList.length
            ? Quiz(
                questions: questionList,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : WonGame(_totalScore, _startAgain),
      ),
    );
  }
}
