import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyXylophone());

class MyXylophone extends StatelessWidget {
  void _playSound(int number){
    final player = AudioCache();
    player.play("d$number.wav");
  }

  Expanded myMethod({Color color,int number,String name}){
    return  Expanded(
      child: FlatButton(onPressed: () {
        print("Clickede $number");
        _playSound(number);
      },
        color: color,
        child: Text(name,style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
        ) ,),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            myMethod(name:"DO",color: Colors.red,number: 1),
            myMethod(name:"RE",color: Colors.orange,number: 2),
            myMethod(name:"MI",color: Colors.yellow,number: 3),
            myMethod(name:"FA",color: Colors.green,number: 4),
            myMethod(name:"SO",color: Colors.blue,number: 5),
            myMethod(name:"LA",color: Colors.deepPurple,number: 6),
            myMethod(name:"TI",color: Colors.purple,number: 7),

          ],),
      ),
    ),);
  }
}
