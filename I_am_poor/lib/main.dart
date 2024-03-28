import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("I am poor!"),
        ),
        body: const Center(
          child: Image(
            image: AssetImage("assets/coal.png"),
          ),
        ),
      ),
    );
  }
}
