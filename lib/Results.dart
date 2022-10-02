import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int totalscore;
  final Function resetHandler;

  Results(this.totalscore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
              child: totalscore <= 8
                  ? Text(
                      'You are good',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    )
                  : totalscore <= 12
                      ? Text(
                          'You are very good',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        )
                      : Text(
                          'you are bad',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        )),
          ElevatedButton(
              onPressed: resetHandler,
              child:
                  Text('Reset', style: TextStyle(color: Colors.amberAccent)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)))
        ],
      ),
    );
  }
}
