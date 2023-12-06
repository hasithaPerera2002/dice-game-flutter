// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dicee',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNUmber = 2;
  int rightDiceNUmber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    changeNumber();
                    print('left button');
                  });
                },
                child: Image.asset('images/dice$leftDiceNUmber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    changeNumber();
                    print('right button');
                  });
                },
                child: Image.asset('images/dice$rightDiceNUmber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeNumber() {
    rightDiceNUmber = Random().nextInt(6) + 1;
    leftDiceNUmber = Random().nextInt(6) + 1;
  }
}
