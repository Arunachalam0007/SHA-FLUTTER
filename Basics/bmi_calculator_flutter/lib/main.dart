import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D21),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
      body: Center(
        child: Text(
          'BMI',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.red,
        ),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
