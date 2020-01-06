import 'package:flutter/material.dart';
import '../Page/HomePage.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<splashScreen> {



  //================ كود Splash Screens=========
  //الانتقال علي الصفحة الرئيسية بعد 5  ثواني -----
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),);
    });
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(
        backgroundColor: Colors.white,

        body: ListView(
          children: <Widget>[

            new SizedBox(height: 100),
            new Image.asset("asset/Imag/intro.gif"),
          ],
        ),


      ),
    );
  }
}