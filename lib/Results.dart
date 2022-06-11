import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int TotalScore;
  Results(this.TotalScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it ',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
