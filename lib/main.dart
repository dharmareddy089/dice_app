import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage() : super();

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ld = 5;
  int rd = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ld = Random().nextInt(6) + 1;
                  rd = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$ld.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    ld = Random().nextInt(6) + 1;
                    rd = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rd.png')),
          ),
        ],
      ),
    );
  }
}
