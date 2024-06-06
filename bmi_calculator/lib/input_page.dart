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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          const Expanded(
              child: Row(
            children: [
              Expanded(
                  child: IconContent(
                content: FontAwesomeIcons.mars,
                label: "MALE",
              )),
              Expanded(
                  child: IconContent(
                content: FontAwesomeIcons.venus,
                label: "FEMALE",
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
