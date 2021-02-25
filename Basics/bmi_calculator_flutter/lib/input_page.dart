import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);


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
                  child: GestureDetector(
                    onTap: () {
                      print('Male Button Pressed');
                      setState(() {
                        gender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      cardColor: gender == GenderType.male ? activeCardColor : inActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        iconText: 'MALE',
                        iconTextColor: Color(0xFFB6B8C4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Female Button Pressed');
                      setState(() {
                        gender = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      cardColor: gender == GenderType.female ? activeCardColor : inActiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        iconText: 'FEMALE',
                        iconTextColor: Color(0xFFB6B8C4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: activeCardColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: activeCardColor,
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
    );
  }
}
