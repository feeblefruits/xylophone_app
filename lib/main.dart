import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

// define StatelessWidget

class MyApp extends StatelessWidget {
//  define playSound function

  void playSound(String soundChord) {
    final player = AudioCache();
    player.play('chr-$soundChord.wav');
  }

  void playLongSound(String soundLongChord) {
    final player = AudioCache();
    player.play('chr-$soundLongChord.wav');
  }

  Expanded buildKey({String soundChord, String soundLongChord, Color color}) {
    return Expanded(
      child: FlatButton(
        splashColor: Color(0xffffcccb),
        highlightColor: Color(0xffff7961),
        color: color,
        child: Text(soundChord),
        onPressed: () {
          playSound(soundChord);
        },
        onLongPress: () {
          playLongSound(soundLongChord);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                soundChord: 'g',
                soundLongChord: 'g-open',
                color: Color(0xffe0f2f1),
              ),
              buildKey(
                soundChord: 'c',
                soundLongChord: 'c-open',
                color: Color(0xffb2dfdb),
              ),
              buildKey(
                soundChord: 'e-oct',
                soundLongChord: 'e5th-open',
                color: Color(0xff80cbc4),
              ),
              buildKey(
                soundChord: 'a-oct',
                soundLongChord: 'a5th-open',
                color: Color(0xff4db6ac),
              ),
              buildKey(
                soundChord: 'd-oct',
                soundLongChord: 'bmin-open',
                color: Color(0xff00796b),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            playSound('pinch-harmonic');
          },
          child: new Icon(
            Icons.music_note,
            color: Colors.black87,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
