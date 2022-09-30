import 'package:flutter/material.dart';
import 'package:my_first_practise/Questions.dart';
import 'package:my_first_practise/Answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerOne;
  final int state;

  Quiz({@required this.questions,@required this.answerOne,@required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Questions(questions[state]['questiontext']),
        ...(questions[state]['answerlist'] as List<String>).map((answerlist) {
          return Answers(answerOne, answerlist);
        })
      ],
    ));
  }
}
