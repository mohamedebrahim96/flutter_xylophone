import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyXylophone());

class MyXylophone extends StatelessWidget {
  void _playSound(int number){
    final player = AudioCache();
    player.play("d$number.wav");
  }

  Expanded myMethod({Color color,int number}){
    return  Expanded(
      child: FlatButton(onPressed: () {
        print("Clickede $number");
        _playSound(number);
      },
        color: color,
        child: Text("Click on m"),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            myMethod(color: Colors.red,number: 1),
            myMethod(color: Colors.yellow,number: 2),
            myMethod(color: Colors.green,number: 3),
            myMethod(color: Colors.blue,number: 4),
            myMethod(color: Colors.orange,number: 5),
            myMethod(color: Colors.purple,number: 6),
            myMethod(color: Colors.black,number: 7),

          ],),
      ),
    ),);
  }
}
