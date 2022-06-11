import 'package:flutter/material.dart';
import './main.dart';

class Question extends StatefulWidget {
  final String QuestionText;
  Question(this.QuestionText);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        widget.QuestionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
