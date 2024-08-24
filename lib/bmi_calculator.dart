import 'dart:math';

class BMICalculator {

  BMICalculator({required this.height,required this.weight});

  final int height;//(? symbol) This means that the variable can either hold a value of the specified type or be null.
  final int weight;
  double _bmi=0; //private property

  String calculateBMI(){
    _bmi=weight/pow(height/100, 2); //height in cm converted to meters
    return _bmi.toStringAsFixed(1);//1 decimal place
  }

  String getResult(){
    if(_bmi <18.5)
      return "Underweight";
    else if(_bmi>=18.5 && _bmi<=24.9)
      return "Normal";
    else
      return "Overweight";
  }

  String getInterpretation(){
    if(_bmi <18.5)
      return "Your weight is lower than normal weight. You can eat more.";
    else if(_bmi>=18.5 && _bmi<=24.9)
      return "You have a normal weight. Good job!";
    else
      return "Your weight is higher than normal weight.Try to exercise more.";
  }
}