import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              xylophoneButton(1, Colors.red),
              xylophoneButton(2, Colors.orange),
              xylophoneButton(3, Colors.yellow),
              xylophoneButton(4, Colors.green),
              xylophoneButton(5, Colors.blue.shade200),
              xylophoneButton(6, Colors.blue.shade900),
              xylophoneButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

Widget xylophoneButton(int number, Color color) {
  return FlatButton(
      color: color,
      padding: EdgeInsets.all(0),
      child: null,
      onPressed: () {
        final player = AudioCache();
        player.play('note$number.wav');
      });
}
