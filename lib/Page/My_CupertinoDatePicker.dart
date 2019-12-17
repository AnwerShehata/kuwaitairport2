import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class My_CupertinoDatePicker extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_CupertinoDatePicker> {

  DateTime _dateTime = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(
          title: Text(" Cupertino Date Picker  "),
          elevation: 0,
          centerTitle: true,
        ),

        body:CupertinoDatePicker(
          initialDateTime: _dateTime,
          mode: CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (dateTime){
            print(dateTime);
            setState(() {
              _dateTime = dateTime;
            });
          },
        ),






      ),
    );
  }
}