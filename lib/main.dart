import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Blue', 'Green', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Dolphin', 'Elephant', 'Dog']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max']
      },
    ];
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
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answers(answer, _answerQuestion);
              }).toList()
            ],
          )),
    );
  }
}
