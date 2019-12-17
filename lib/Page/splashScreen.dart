import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.white,

        body: ListView(
          children: <Widget>[

            new SizedBox(height: 100),
            new Image.asset("asset/Imag/logohome.jpg" ,scale: 4,),
            
          ],
        ),







      ),
    );
  }
}