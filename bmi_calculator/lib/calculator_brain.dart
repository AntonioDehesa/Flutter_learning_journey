import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.weight, this.height);

  final int weight;
  final int height;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Higher than normal";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Lower than normal";
    }
  }
}
