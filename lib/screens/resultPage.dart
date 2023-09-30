import 'package:bmi_flutter/components/ReusableCard.dart';
import 'package:bmi_flutter/components/button.dart';
import 'package:bmi_flutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                  "YOUR RESULT",
                  style:kTitleTextStyle ,
              ),
            ),
          ),

          Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(),style: kResultTextStyle,),
                      Text(bmiResult,style: kBMITextStyle,),
                      Text(interpretation,style:kBodyTextStyle ,textAlign: TextAlign.center,)
                    ],
                  ),
                  onPress: (){},
              )
          ),
          CalculateButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE"
          )
        ],
      ),
    );
  }
}
