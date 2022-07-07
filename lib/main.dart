import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playS(int playSound) {
    final player = AudioCache();
    player.play('assets_note$playSound.wav');
  }

  Expanded buildKey({Color? color , required int  soundNumber, var name})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playS( soundNumber);
        },
        child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber:1 , name:'SA'),
              buildKey(color: Colors.orange,  soundNumber:2 , name:'RE'),
              buildKey(color: Colors.yellow,  soundNumber:3 ,name:'GA'),
              buildKey(color: Colors.green,  soundNumber:4 ,name:'MA'),
              buildKey(color: Colors.lightBlueAccent,  soundNumber:5,name:'PA' ),
              buildKey(color: Colors.purpleAccent,  soundNumber:6 ,name:'DA'),
              buildKey(color: Colors.brown,  soundNumber:7 ,name:'SA'),
            ],
          )),
        ),
      ),
    );
  }
}
