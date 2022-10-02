// ignore: unused_import
import 'package:flutter/material.dart';
//import 'package:my_first_practise/Answers.dart';
//import 'package:my_first_practise/Questions.dart';
import 'package:my_first_practise/Quiz.dart';
import 'package:my_first_practise/Results.dart';

//void main(){
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var state = 0;
  var totalScore = 0;
  //int score;
  var questions = [
    {
      'questiontext': 'What is your favourite Animal?',
      'answerlist': [
        {'answer': 'Dog', 'score': 2},
        {'answer': 'Cat', 'score': 5},
        {'answer': 'Elephant', 'score': 3}
      ],
    },
    {
      'questiontext': 'What is your favourite Place?',
      'answerlist': [
        {'answer': 'Sialkot', 'score': 2},
        {'answer': 'Lahore', 'score': 5},
        {'answer': 'Islamabad', 'score': 3}
      ],
    },
    {
      'questiontext': 'Who is your favourite person?',
      'answerlist': [
        {'answer': 'Fakhar', 'score': 2},
        {'answer': 'Saad', 'score': 5},
        {'answer': 'Arslan', 'score': 3},
        {'answer': 'Ali', 'score': 3}
      ],
    },
    {
      'questiontext': 'Who is your favourite host?',
      'answerlist': [
        {'answer': 'Fakhar', 'score': 2},
        {'answer': 'Saad', 'score': 5},
        {'answer': 'Arslan', 'score': 3},
        {'answer': 'Ali', 'score': 3}
      ],
    },
  ];

  void reset() {
    setState(() {
      state = 0;
      totalScore = 0;
    });
  }

  void answerOne(int score) {
    totalScore += score;
    print('Answer 1 is presssed');
    setState(() {
      state = state + 1;
    });
    if (state < questions.length) {
      print('We have more question yet');
    } else {
      print('No more questions');
    }
  }

  void answertwo() {
    setState(() {
      state = 2;
    });
    print('Answer 2 is presssed');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    // ignore: dead_code
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is my First app'),
          ),
          body: state < questions.length
              ? Quiz(
                  answerOne: answerOne,
                  state: state,
                  questions: questions,
                )
              : Results(totalScore, reset)),
    );
  }
}
