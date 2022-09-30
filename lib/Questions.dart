import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;

  Questions(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(
        question,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
