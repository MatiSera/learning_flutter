import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restart;

  Result(this.totalScore, this.restart);

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (totalScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: restart,
            child: Text('Restart',
                style: TextStyle(fontSize: 20, color: Colors.green)),
          )
        ],
      ),
    );
  }
}
