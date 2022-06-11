import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;
  Answer(this.answerQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: answerQuestion,
      ),
    );
  }
}
