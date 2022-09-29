// ignore: unused_import
import 'package:flutter/material.dart';

//void main(){
// runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: null,
              child:
                  Text('Answer 1', style: TextStyle(color: Colors.amberAccent)),
            ),
            ElevatedButton(
              onPressed: null,
              child:
                  Text('Answer 2', style: TextStyle(color: Color.fromARGB(255, 64, 255, 223))),
            ),
            ElevatedButton(
              onPressed: null,
              child:
                  Text('Answer 3', style: TextStyle(color: Color.fromARGB(255, 255, 64, 64))),
            ),
          ],
        ),
      ),
    );
  }
}
