import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;

  Answers(this.answer);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: Text(answer,style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,),
    );
      
  
  }
}