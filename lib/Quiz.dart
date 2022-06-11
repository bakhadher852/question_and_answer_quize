import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  VoidCallback AnswerQuestion;
  int QuestionIndex;

  quiz(
      {required this.questions,
      required this.AnswerQuestion,
      required this.QuestionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // if it show you error use (as String)
        //first[]is the number or index, second[]is the text or the mesagge or key name

        Question(questions[QuestionIndex]['QuestionText'] as String),
        //now we want to convert the list of maps to list of widget for the answers
        //.map() convert the list of map to list of widgets
        ...(questions[QuestionIndex]['Answer'] as List<String>)
            .map((answerText) {
          return Answer(AnswerQuestion, answerText);
        }).toList(),
      ],
    );
  }
}
