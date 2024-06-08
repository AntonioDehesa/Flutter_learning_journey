import 'package:flutter/cupertino.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // It requires to be initialized.
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                child: IconContent(
                  colour: selectedGender == Gender.male
                      ? reusableCardColor
                      : inactiveCardColous,
                  content: FontAwesomeIcons.mars,
                  label: "MALE",
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                child: IconContent(
                  colour: selectedGender == Gender.female
                      ? reusableCardColor
                      : inactiveCardColous,
                  content: FontAwesomeIcons.venus,
                  label: "FEMALE",
                ),
              ))
            ],
          )),
          const Expanded(
              child: ReusableCard(
            cardChild: Column(),
          )),
          const Expanded(
              child: Row(
            children: [
              Expanded(child: ReusableCard(cardChild: Column())),
              Expanded(child: ReusableCard(cardChild: Column()))
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
