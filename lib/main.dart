// ignore: unused_import
import 'package:flutter/material.dart';

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
class MyAppState extends State<MyApp>{


  var questionIndex=0;

  void answerOne(){
    setState(() {
      questionIndex=questionIndex+1;
    });
    
    print('Answer 1 is presssed');
  }

  void answertwo(){
    setState(() {
      questionIndex=questionIndex+1;
    });
    print('Answer 2 is presssed');
  }
  @override
  Widget build(BuildContext context) {
    var questions= [
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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerOne,
              child:
                  Text('Answer 1', style: TextStyle(color: Colors.amberAccent)),
            ),
            ElevatedButton(
              onPressed: answertwo,
              child:
                  Text('Answer 2', style: TextStyle(color: Color.fromARGB(255, 64, 255, 223))),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3 is pressed'),
              child:
                  Text('Answer 3', style: TextStyle(color: Color.fromARGB(255, 255, 64, 64))),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 4 is pressed');
              },
              child:
                  Text('Answer 4', style: TextStyle(color: Color.fromARGB(255, 6, 8, 0))),
            ),
          ],
        ),
      ),
    );
  }
}
