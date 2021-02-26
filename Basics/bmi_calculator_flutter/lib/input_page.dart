import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';


enum GenderType {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: gender == GenderType.male ? kActiveCardColor : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                    onPress: (){
                      setState(() {
                        gender = GenderType.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: gender == GenderType.female ? kActiveCardColor : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                    onPress: (){
                      setState(() {
                        gender = GenderType.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: kActiveCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
