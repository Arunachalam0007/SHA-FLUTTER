import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        body: SafeArea(
          child: Container(
            child: Text("MI CARD"),
            color: Colors.white,
            height: 100,
            width: 100,
            margin: EdgeInsets.only(left: 150, top: 150),
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
