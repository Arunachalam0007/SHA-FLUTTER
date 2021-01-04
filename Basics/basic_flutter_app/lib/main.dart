import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sha Bar'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.green,
        body: Center(
          child: Image(
            image: AssetImage('images/spiderman1.jpg'),
          ),
        ),
      ),
    );
  }
}
