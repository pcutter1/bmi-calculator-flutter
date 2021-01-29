
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = 703*weight / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Average';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25.0) {
      return 'Time to start countin the cals... Booo...';
    } else if (_bmi > 18.5) {
      return 'Ahhh... right where you want to be!';
    } else {
      return 'Stop everything and go buy a tub of ice cream';
    }
  }

}