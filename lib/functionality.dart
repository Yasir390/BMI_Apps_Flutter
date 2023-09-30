import 'dart:math';

class Functionality{

  Functionality({required this.weight,required this.height,});

  final int height;
  final int weight;
   var bmi;

  //var bmi;
  // if (s != null) {
  // var len = s.length; // Safe
  // }

  var _bmi;
  String calculateBMI(){
     _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){

 if(_bmi >= 25){
   return "Overweight";
 }
 else if(_bmi > 18.5){
   return "Normal";
 }
 else{
   return "Underweight";
 }
  }

  String getInterpretation(){
 if(_bmi >= 25){
   return "You have higher than normal body weight. Maintain Diet";
 }
 else if(_bmi > 18.5){
   return "You have a normal body weight. Great";
 }
 else{
   return "You have lower than normal body weight.You can eat a bit more";
 }
  }

}