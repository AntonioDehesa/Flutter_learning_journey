import 'package:flutter/material.dart';
import 'question.dart';

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

int questionNumber = 0;

List<Question> questionBank = [
  Question(
      questionText: "You can lead a cow down stairs but not up stairs.",
      questionAnswer: false),
  Question(
      questionText: "Approximately one quarter of human bones are in the feet.",
      questionAnswer: true),
  Question(questionText: 'A slug\'s blood is green.', questionAnswer: true)
];

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                  if (questionBank[questionNumber++].questionAnswer == true) {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
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
                  if (questionBank[questionNumber++].questionAnswer == false) {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                });
              },
              child: const Text("False"),
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
