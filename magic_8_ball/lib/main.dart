import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int currentBall = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset("images/ball$currentBall.png"),
                onPressed: () {
                  setState(() {
                    currentBall = Random().nextInt(5) + 1;
                  });
                },
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blue,
    ));
  }
}
