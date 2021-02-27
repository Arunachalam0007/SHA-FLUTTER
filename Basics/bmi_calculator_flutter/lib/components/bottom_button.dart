import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final Function onTapButton;

  BottomButton({@required this.buttonText, this.onTapButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        child: Center(
            child: Text(
          buttonText,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
