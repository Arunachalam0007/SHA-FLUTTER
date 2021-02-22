import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound( int audioNumber){
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(

            child: Column(
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                ),
                FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(5);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  },
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
