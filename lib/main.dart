import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey({Color clr, int n}) {
    return Expanded(
      child: FlatButton(
        color: clr,
        onPressed: () {
          player.play('note$n.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(clr: Colors.red, n: 1),
              buildKey(clr: Colors.orange, n: 2),
              buildKey(clr: Colors.green, n: 3),
              buildKey(clr: Colors.yellow, n: 4),
              buildKey(clr: Colors.teal, n: 5),
              buildKey(clr: Colors.blue, n: 6),
              buildKey(clr: Colors.purple, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
