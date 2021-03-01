import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretationResult;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretationResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      interpretationResult,
                      textAlign: TextAlign.center,
                      style: kBMIResultDescriptionTextStyle,
                    ),
                  ],
                ),
              )),
          BottomButton(
            buttonText: 'Re-Calculate',
            onTapButton: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
