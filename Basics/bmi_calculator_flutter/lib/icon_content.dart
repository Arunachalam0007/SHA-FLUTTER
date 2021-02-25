import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final Color iconTextColor;
  final IconData icon;
  final String iconText;

  IconContent({this.iconTextColor, this.icon, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: TextStyle(
            color: iconTextColor, //Color(0xFFB6B8C4)
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
