import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LW'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 200,
              height: 100,
              child:
                  Card(color: Colors.red, child: Text('first'), elevation: 75),
            ),
            Container(
                width: 100,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print('hi');
                    AudioCache player = new AudioCache();
                    const alarmAudioPath = 'audio1.ogg';
                    player.play(alarmAudioPath);
                  },
                  child: Card(
                    color: Colors.green,
                    child: Text('sec'),
                  ),
                )),
            Container(
              width: 400,
              height: 200,
              child: Image.asset('images/dhoni.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
