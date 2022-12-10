import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // SoundNumber Variable
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // XylophoneApp Design
  Expanded buildKey(color, soundNumber, name) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(name),
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
              buildKey(Colors.red, 1, "A1"),
              buildKey(Colors.orange, 2, "B1"),
              buildKey(Colors.yellow, 3, "B2"),
              buildKey(Colors.green, 4, "C1"),
              buildKey(Colors.blue, 5, "D1"),
              buildKey(Colors.pinkAccent, 6, "E2"),
              buildKey(Colors.purple, 7, "F1"),
            ],
          ),
        ),
      ),
    );
  }
}
