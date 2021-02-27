import 'package:flutter/material.dart';

class IconButtonContent extends StatelessWidget {
  final Function onButtonPressed;
  final Widget childWidget;
  final ShapeBorder buttonShape;

  IconButtonContent({
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
