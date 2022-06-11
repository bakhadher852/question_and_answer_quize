import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

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
