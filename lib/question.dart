import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  @override
  Question({required this.questionText});
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
