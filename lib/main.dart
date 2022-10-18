import 'package:flutter/material.dart';

import 'package:my_app2/quiz.dart';
import 'package:my_app2/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'guru', 'score': 1},
        {'text': 'guru', 'score': 1},
        {'text': 'guru', 'score': 1},
        {'text': 'guru', 'score': 1},
      ],
    },
  ];
  int _questionindex = 0, _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.orange,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                questions: _questions as List<Map<String, Object>>,
                questionindex: _questionindex as int,
                answerQuestion: _answerQuestion)
            : Result(resultScore: _totalscore, resethandler: _resetQuiz),
      ),
    );
  }
}
