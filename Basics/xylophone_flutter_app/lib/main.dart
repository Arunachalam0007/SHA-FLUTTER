import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // return assert audio using AudioCatch class
  void playSound(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  //return Expanded Class which will using many places for code refactor.
  Expanded buildKey({Color color, int audioNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(audioNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, audioNumber: 1),
                buildKey(audioNumber: 2, color: Colors.orange),
                buildKey(audioNumber: 3, color: Colors.yellow),
                buildKey(audioNumber: 4, color: Colors.green),
                buildKey(audioNumber: 5, color: Colors.teal),
                buildKey(audioNumber: 6, color: Colors.blue),
                buildKey(audioNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
