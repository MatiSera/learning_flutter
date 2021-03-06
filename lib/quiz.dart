import 'package:flutter/material.dart';

import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questionIndex, this.answerQuestion, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(answer['text'], () => answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
