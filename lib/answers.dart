import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final Function answerQuestion;

  Answers(this.answer, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answer,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onPressed: answerQuestion,
        color: Colors.cyan[200],
        textColor: Colors.black87,
      ),
    );
  }
}
