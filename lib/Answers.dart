import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function functionHolder;
  final String answerText;

Answers(this.functionHolder,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: functionHolder,
        child: Text(answerText, style: TextStyle(color: Colors.amberAccent)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    ));
  }
}
