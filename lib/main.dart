import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


void playSound(int soundNumber){
  final player = AudioCache();
  player.play("note$soundNumber.wav");
}

Widget keySound(int noteNumber, MaterialColor noteColor){
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playSound(noteNumber);
      },
      color: noteColor,
      child: Container(),
    ),
  );
}



class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              keySound(1,Colors.red),
              keySound(2,Colors.orange),
              keySound(3,Colors.yellow),
              keySound(4,Colors.green),
              keySound(5,Colors.teal),
              keySound(6,Colors.blue),
              keySound(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}