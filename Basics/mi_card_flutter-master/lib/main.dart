import 'package:flutter/cupertino.dart';
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
        backgroundColor:   Colors.lightGreenAccent,
        body: SafeArea(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           // verticalDirection: VerticalDirection.up, // reverse order of an container and move all conter to down
           // mainAxisAlignment: MainAxisAlignment.end, // moving all he container to the end
           // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // This will give space for front and back
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,  // This will give space only between the container or widget
           //  crossAxisAlignment: CrossAxisAlignment.end, // this is will move end to cross(opposite)
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text("MI CARD 1"),
                color: Colors.white,
                height: 100.0,
              //  width: double.infinity,
                // margin: EdgeInsets.only(left: 150, top: 150),
                // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              ),
              Container(
                child: Text("MI CARD 2"),
                color: Colors.red,
                height: 100,
                width: 100,
                // margin: EdgeInsets.only(left: 150, top: 150),
                // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              ),
              Container(
                child: Text("MI CARD 3"),
                color: Colors.blue,
                height: 100,
                width: 100,
                // margin: EdgeInsets.only(left: 150, top: 150),
                // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              ),
              Container(
                child: Row(
                  children: [ Container(
                    child: Text("MI CARD 1"),
                    color: Colors.white,
                    height: 100.0,
                    width: 100,
                    //  width: double.infinity,
                    // margin: EdgeInsets.only(left: 150, top: 150),
                    // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  ),
                    Container(
                      child: Text("MI CARD 2"),
                      color: Colors.red,
                      height: 100,
                      width: 100,
                      // margin: EdgeInsets.only(left: 150, top: 150),
                      // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    ),
                    Container(
                      child: Text("MI CARD 3"),
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                      // margin: EdgeInsets.only(left: 150, top: 150),
                      // padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    ),

                  ],
                ),
              )
            ],
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
