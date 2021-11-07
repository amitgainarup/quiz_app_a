import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'done';

    if (resultScore <= 60) {
      resultText = 'your are average-${resultScore}';
    } else if (resultScore <= 80) {
      resultText = 'you are good-${resultScore}';
    } else {
      resultText = 'you are excellent-${resultScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            child: Text(
              'Restart Quiz',
            ),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
