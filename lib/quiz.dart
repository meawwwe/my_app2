import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final ValueSetter<int> answerQuestion;
  Quiz({
    required this.questions,
    required this.questionindex,
    required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionindex]['questionText'] as String,
        ),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer['score'] as int),
              answerText: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
