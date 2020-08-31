import 'dart:math';

class CalculatorFunctions {
  CalculatorFunctions({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi
        .toStringAsFixed(1); //converts bmi to string with 1 decimal place
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal BMI. Try doing some exercise and drinking more water';
    } else if (_bmi > 18.5) {
      return 'Good job, you have a normal BMI. Keep it up to stay healthy';
    } else {
      return 'Oh no, you have a lower than normal BMI. You are free to eat more';
    }
  }
}
