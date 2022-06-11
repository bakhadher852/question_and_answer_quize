import 'package:flutter/material.dart';
import 'package:question_and_answer_quize/Quiz.dart';
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
      'Answer': ['Red', 'Green', 'Black', 'White']
    },
    {
      'QuestionText': 'who\'s your favorite teacher',
      'Answer': ['Jhon', 'Well', 'Ropert', 'Jen']
    },
    {
      'QuestionText': 'what\'s your favorite animal?',
      'Answer': ['Dog', 'Cat', 'Rat', 'Hourse']
    }
  ];

  var QuestionIndex = 0;

  void AnswerQuestion() {
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
                AnswerQuestion: AnswerQuestion)
            : Center(
                child: Text(
                  'You did it ',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}
