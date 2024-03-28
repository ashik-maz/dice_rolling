import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceRollingApp());
}

class DiceRollingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Rolling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiceRollingPage(),
    );
  }
}

class DiceRollingPage extends StatefulWidget {
  @override
  _DiceRollingPageState createState() => _DiceRollingPageState();
}

class _DiceRollingPageState extends State<DiceRollingPage> {
  int dice1 = 1;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1; // Generate a random number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              
              height: 200,
              width: 200,
              color: Color(0xFFC70E00),
              child:_buildDice(dice1),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: rollDice,
              child: Text(
                'Rolling',
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
              style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xFFF0594E)),shape: MaterialStateProperty.all(
RoundedRectangleBorder(
// Change your radius here
borderRadius: BorderRadius.circular(16),
),),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDice(int diceNumber) {
    return Center(
      child: Image.asset(
        'images/dice$diceNumber.png',
        width: 100,
        height: 100,
      ),
    );
  }
}
