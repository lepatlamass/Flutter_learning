import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  //when declaring variable for an expend put in a bracket
  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(color: Colors.red, soundNumber: 1),
            buildkey(color: Colors.grey, soundNumber: 2),
            buildkey(color: Colors.green, soundNumber: 3),
            buildkey(color: Colors.yellow, soundNumber: 4),
            buildkey(color: Colors.purple, soundNumber: 5),
            buildkey(color: Colors.blue, soundNumber: 6),
            buildkey(color: Colors.orange, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
