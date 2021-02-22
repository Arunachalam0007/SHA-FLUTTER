import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            child: Center(
              child: FlatButton(
                child: Text("Sound ON"),
                color: Colors.white,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
