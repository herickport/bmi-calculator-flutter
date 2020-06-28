import 'dart:math';

import 'package:flutter/widgets.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  final Map<String, String> _bmiResult = {
    'bmi': '',
    'result': '',
    'interpretation': '',
  };

  Map<String, String> calculateBMI() {
    final double bmi = weight / pow(height / 100.0, 2);
    _bmiResult['bmi'] = bmi.toStringAsFixed(1);

    if (bmi > 25) {
      _bmiResult['result'] = 'Overweight';
      _bmiResult['interpretation'] =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      _bmiResult['result'] = 'Normal';
      _bmiResult['interpretation'] = 'You have a normal body weight. Good job.';
    } else {
      _bmiResult['result'] = 'Underweight';
      _bmiResult['interpretation'] =
          'You have a lower than normal body weight. You can eat a bit more.';
    }

    return _bmiResult;
  }
}
