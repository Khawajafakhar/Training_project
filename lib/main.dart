// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:my_first_practise/Answers.dart';
import 'package:my_first_practise/Questions.dart';

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

  void answerOne() {
    setState(() {
      state = state+1;
    });

    print('Answer 1 is presssed');
  }

  void answertwo() {
    setState(() {
      state = 2;
    });
    print('Answer 2 is presssed');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext': 'What is your favourite Animal?',
        'answerlist': ['Dog', 'cat', 'Elephant'],
      },
      {
        'questiontext': 'What is your favourite Place?',
        'answerlist': ['Lahore', 'Sialkot', 'Islamabad'],
      },
      {
        'questiontext': 'Who is your favourite person?',
        'answerlist': ['Ali', 'Saad', 'Fakhar', 'Arslan'],
      },
      {
        'questiontext': 'Who is your favourite host?',
        'answerlist': ['Ali', 'Saad', 'Fakhar', 'Arslan'],
      },
    ];
    // TODO: implement build
    //throw UnimplementedError();
    // ignore: dead_code
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is my First app'),
        ),
        body: Column(
          children: [
            Questions(questions[state]['questiontext']),
            ...(questions[state]['answerlist'] as List<String>)
                .map((answerlist) {
                  return Answers(answerOne,answerlist);
                })
          ],
        ),
      ),
    );
  }
}
