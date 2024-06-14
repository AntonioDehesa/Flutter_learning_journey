import 'package:flutter/cupertino.dart';
import 'results_page.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

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
  int age = 18;

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
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0)),
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
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: ReusableCard(
                      color: reusableCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      )))
            ],
          )),
          BottomButton(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              ButtonTittle: 'Calculate')
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.child, required this.onPress});

  final Widget child;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: const CircleBorder(),
        elevation: 6.0,
        fillColor: const Color(0xFF4C4F5E),
        onPressed: onPress,
        child: child);
  }
}
