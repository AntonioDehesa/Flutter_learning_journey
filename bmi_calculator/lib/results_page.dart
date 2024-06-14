import 'dart:ui';

import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text("Your Result",
                  style: const TextStyle(
                      fontSize: 22.0, fontWeight: FontWeight.bold)),
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
                      "NORMAL",
                      style: TextStyle(
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0),
                    ),
                    Text(
                      "18.3",
                      style: TextStyle(
                          fontSize: 100.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Your BMI result is quite low",
                      style: TextStyle(fontSize: 22.0),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
