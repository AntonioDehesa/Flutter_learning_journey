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
  int height = 180;
  int weight = 60;

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
          Expanded(
              child: ReusableCard(
            color: reusableCardColor,
            cardChild: Column(
              children: [
                const Text("HEIGHT"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: const TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      "CM",
                    )
                  ],
                ),
                SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 20.0,
                        max: 250.0,
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }))
              ],
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      color: reusableCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          )
                        ],
                      ))),
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
