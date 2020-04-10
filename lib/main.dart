import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              xylophoneButton(
                1,
                Colors.red,
                player,
              ),
              xylophoneButton(
                2,
                Colors.orange,
                player,
              ),
              xylophoneButton(
                3,
                Colors.yellow,
                player,
              ),
              xylophoneButton(
                4,
                Colors.green,
                player,
              ),
              xylophoneButton(
                5,
                Colors.blue.shade200,
                player,
              ),
              xylophoneButton(
                6,
                Colors.blue.shade900,
                player,
              ),
              xylophoneButton(
                7,
                Colors.purple,
                player,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget xylophoneButton(int number, Color color, AudioCache player) {
  return FlatButton(
      color: color,
      padding: EdgeInsets.all(0),
      child: null,
      onPressed: () {
        player.play('note$number.wav');
      });
}
