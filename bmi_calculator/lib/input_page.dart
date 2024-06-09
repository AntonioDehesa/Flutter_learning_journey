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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: IconContent(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? reusableCardColor
                    : inactiveCardColour,
                content: FontAwesomeIcons.mars,
                label: "MALE",
              )),
              Expanded(
                  child: IconContent(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female
                    ? reusableCardColor
                    : inactiveCardColour,
                content: FontAwesomeIcons.venus,
                label: "FEMALE",
              ))
            ],
          )),
          const Expanded(
              child: ReusableCard(
            color: reusableCardColor,
            cardChild: Column(
              children: [
                Text("HEIGHT"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      "180",
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "CM",
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    )
                  ],
                )
              ],
            ),
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
