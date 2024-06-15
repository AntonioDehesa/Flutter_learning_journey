
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text("Your Results",
                  style: TextStyle(
                      fontSize: 50.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: reusableCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: const TextStyle(
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  Text(
                    bmiResult,
                    style:
                        const TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    style: const TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              ButtonTittle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
