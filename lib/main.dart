import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(child: Text('DICEROLL')),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changedice(){
    setState(() {
      leftdicenumber = Random().nextInt(6)+1;
       rightdicenumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                   changedice();
                    print('left button');
                  },
                  child: Image.asset('images/dice$leftdicenumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                   changedice();
                    print('right button');
                  },
                  child: Image.asset('images/dice$rightdicenumber.png')))
        ],
      ),
    );
  }
}
