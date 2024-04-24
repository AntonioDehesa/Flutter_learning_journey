import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

List<Widget> scoreKeeper = [];

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                // The user picked correctly
                setState(() {
                  scoreKeeper.add(const Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                });
              },
              child: const Text("True"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(const Icon(
                    Icons.close,
                    color: Colors.red,
                  ));
                });
              },
              child: const Text("True"),
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
