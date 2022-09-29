// ignore: unused_import
import 'package:flutter/material.dart';

//void main(){
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answerOne(){
    print('Answer 1 is presssed');
  }

  void answertwo(){
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
        body: Column(
          children: [
            Text('This is the question'),
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
