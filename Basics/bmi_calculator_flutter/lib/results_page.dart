import 'package:bmi_calculator_flutter/bottom_button.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
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
                      'OVERWEIGHT',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '26.7',
                      style: kBMIResultTextStyle,
                    ),
                    Text(
                      'You have a higher than normal body weight. Try to exercise more.',
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
