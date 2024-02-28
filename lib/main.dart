import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const BallPage(),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            debugPrint('I got Clicked');
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });

            debugPrint('I got Clicked $ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
