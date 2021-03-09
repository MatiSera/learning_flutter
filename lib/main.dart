import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 50},
        {'text': 'Yellow', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dolphin', 'score': 30},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Dog', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    totalScore += score;

    if (_questionIndex < _questions.length) {
      print('we have more _questions!');
    }
  }

  void restartGame() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First Flutter App'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            actions: [
              IconButton(
                  icon: Icon(Icons.person),
                  tooltip: 'Open shopping cart',
                  iconSize: 34.0,
                  onPressed: () {}),
            ],
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questionIndex, _answerQuestion, _questions)
              : Result(totalScore, restartGame)),
    );
  }
}
