import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
            print(ballNumber);
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
