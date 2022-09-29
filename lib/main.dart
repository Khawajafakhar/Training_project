// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:my_first_practise/Answers.dart';

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
      state = 1;
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
    var answers = [
      'Select any answer',
      'Answer 1 is selected',
      'Answer 2 is selected',
      'Answer 3 is selected',
      'Answer 4 is selected'
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
            Answers(answers[state]),
            ElevatedButton(
              onPressed: answerOne,
              child:
                  Text('Answer 1', style: TextStyle(color: Colors.amberAccent)),
            ),
            ElevatedButton(
              onPressed: answertwo,
              child: Text('Answer 2',
                  style: TextStyle(color: Color.fromARGB(255, 64, 255, 223))),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  state = 3;
                });
              },
              child: Text('Answer 3',
                  style: TextStyle(color: Color.fromARGB(255, 255, 64, 64))),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  state = 4;
                });
              },
              child: Text('Answer 4',
                  style: TextStyle(color: Color.fromARGB(255, 6, 8, 0))),
            ),
          ],
        ),
      ),
    );
  }
}
