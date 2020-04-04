import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneApp extends StatelessWidget {

  void playSound(int index){
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Widget buildKey({Color color, int soundNum}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.amber, soundNum: 1),
              buildKey(color: Colors.red, soundNum: 2),
              buildKey(color: Colors.green, soundNum: 3),
              buildKey(color: Colors.pink, soundNum: 4),
              buildKey(color: Colors.teal, soundNum: 5),
              buildKey(color: Colors.deepOrange, soundNum: 6),
              buildKey(color: Colors.indigo, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
