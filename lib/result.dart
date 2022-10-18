import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resethandler;
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  Result({required this.resultScore, required this.resethandler});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              wordSpacing: 2,
            ),
          ),
          OutlinedButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            onPressed: resethandler,
          ),
        ],
      ),
    );
  }
}
