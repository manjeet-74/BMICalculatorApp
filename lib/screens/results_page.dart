import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/components/reusable_card.dart';
import 'package:bmi_app/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
              textAlign: TextAlign.center,
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5, //5times the size of previous container
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                      style: kBodyTextStyle,
                  textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
