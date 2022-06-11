import 'package:flutter/material.dart';
import 'package:question_and_answer_quize/Quiz.dart';
import 'package:question_and_answer_quize/Results.dart';
import './Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'QuestionText': 'what\'s your favorite color?',
      'Answer': [
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'QuestionText': 'who\'s your favorite teacher',
      'Answer': [
        {'text': 'Jhon', 'score': 5},
        {'text': 'Well', 'score': 5},
        {'text': 'Ropert', 'score': 5},
        {'text': 'Jen', 'score': 5}
      ]
    },
    {
      'QuestionText': 'what\'s your favorite animal?',
      'Answer': [
        {'text': 'Dog', 'score': 6},
        {'text': 'Cat', 'score': 3},
        {'text': 'Rat', 'score': 1},
        {'text': 'Hourse', 'score': 10}
      ]
    }
  ];

  var QuestionIndex = 0;
  var TotalScore = 0;
  void AnswerQuestion(int score) {
    TotalScore += score;

    setState(() {
      QuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz app", textAlign: TextAlign.center),
        ),
        body: QuestionIndex < questions.length
            ? quiz(
                QuestionIndex: QuestionIndex,
                questions: questions,
                AnswerQuestion: () => AnswerQuestion)
            : Results(),
      ),
    );
  }
}
