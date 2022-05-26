import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    void playsora(int num) {
      final player = AudioCache();
      player.play('sora-$num.mp3');
    }
    Expanded mybutton(int num, Color colortext, String textbutton) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom:1.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background
             // onPrimary: Colors.yellow, // foreground
            ),
            onPressed: () {
              playsora(num);
            },
            child: Padding(
              padding: const EdgeInsets.only(left : 8.0),
              child: Row(
                children: [
                  Icon(Icons.music_note , color: colortext,) ,
                  SizedBox(width: 20,),
                  Text( textbutton,  style: TextStyle(color: colortext,fontSize: 20, ), ),
                  SizedBox(width: 5,),
                 IconButton(onPressed: () {
                 },  icon: Icon(Icons.play_circle , color: colortext,  )),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Colors.purple,

        appBar: AppBar(
          title: Text("               اسمع تكسب حسنات          "),
          backgroundColor: Colors.deepPurple,
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            mybutton(1,Colors.black," ' سوره يس ' العفاسى  ",),
            mybutton( 2, Colors.amber, " ' سوره مريم ' احمد العجمى  ",),
            mybutton( 3, Colors.pink, " ' سوره قلم ' اسلام صبحى  ",  ),
            mybutton(4, Colors.red," 'سوره كهف ' احمد العجمى  ",),
            mybutton(5, Colors.brown, " '  سوف نبقى هنا  '   رامى احمد  ",)
          ],
        ),
      ),
    );
  }
}
