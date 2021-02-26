import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType gender;
  int currentHeight = 130;
  int currentWeight = 10;
  int currentAge = 5;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: gender == GenderType.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconText: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        gender = GenderType.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: gender == GenderType.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                    onPress: () {
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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        currentHeight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    // Customize slider theme
                    //SliderTheme.of(context) is copying default style of slider
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                        value: currentHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // we need to specify this in slider theme bec this will override thumbColor
                        // activeColor: Colors.white,
                        onChanged: (double sliderValue) {
                          //update slider value when dragging the slider
                          setState(() {
                            currentHeight = sliderValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Column(
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        currentWeight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            childWidget: Icon(Icons.add),
                            buttonShape: CircleBorder(),
                            onButtonPressed: (){
                              setState(() {
                                currentWeight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          IconButton(
                            childWidget: Icon(FontAwesomeIcons.minus),
                            buttonShape: CircleBorder(),
                            onButtonPressed: (){
                              setState(() {
                                currentWeight--;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardColor: kActiveCardColor,
                  cardChild: Column(
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        currentAge.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            childWidget: Icon(Icons.add),
                            buttonShape: CircleBorder(),
                            onButtonPressed: (){
                              setState(() {
                                currentAge++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          IconButton(
                            childWidget: Icon(FontAwesomeIcons.minus),
                            buttonShape: CircleBorder(),
                            onButtonPressed: (){
                              setState(() {
                                currentAge--;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
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

class IconButton extends StatelessWidget {

  final Function onButtonPressed;
  final Widget childWidget;
  final ShapeBorder buttonShape;

  IconButton({
    @required this.buttonShape,
    this.childWidget,
    this.onButtonPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        shape: buttonShape,
        fillColor: Color(0xFF4C4F5E),
        //Sizing
        constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0,
        ),
        onPressed: onButtonPressed,
        elevation: 0.0,
        child: childWidget,
      ),
    );
  }
}
