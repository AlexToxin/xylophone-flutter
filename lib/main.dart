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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildXylophoneButton(
                soundNumber: 1,
                color: Colors.red,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 2,
                color: Colors.orange,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 3,
                color: Colors.yellow,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 4,
                color: Colors.green,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 5,
                color: Colors.blue.shade200,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 6,
                color: Colors.blue.shade900,
                player: audioplayer,
              ),
              buildXylophoneButton(
                soundNumber: 7,
                color: Colors.purple,
                player: audioplayer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildXylophoneButton({int soundNumber, Color color, AudioCache player}) {
  return Expanded(
    child: FlatButton(
        color: color,
        child: null,
        onPressed: () {
          player.play('note$soundNumber.wav');
        }),
  );
}
