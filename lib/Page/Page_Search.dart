import 'package:flutter/material.dart';

class Page_Search extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_Search> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        appBar: AppBar(
          title: Text("Page_Search"),
        ),



      ),
    );
  }
}