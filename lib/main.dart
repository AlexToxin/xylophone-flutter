import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final audioplayer = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: xylophoneButton(
                  soundNumber: 1,
                  color: Colors.red,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 2,
                  color: Colors.orange,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 3,
                  color: Colors.yellow,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 4,
                  color: Colors.green,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 5,
                  color: Colors.blue.shade200,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 6,
                  color: Colors.blue.shade900,
                  player: audioplayer,
                ),
              ),
              Expanded(
                child: xylophoneButton(
                  soundNumber: 7,
                  color: Colors.purple,
                  player: audioplayer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget xylophoneButton({int soundNumber, Color color, AudioCache player}) {
  return FlatButton(
      color: color,
      child: null,
      onPressed: () {
        player.play('note$soundNumber.wav');
      });
}
