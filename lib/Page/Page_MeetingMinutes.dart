import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page_MeetingMinutes extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_MeetingMinutes> {

  String nameMeeting  = 'عنوان المحضر' ;
  String DateMeeting  = '9/10/2020' ;



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        //------ AppBar ---------------------------------------------------
        appBar: AppBar(
          backgroundColor: anRed,
          elevation: 0,
          centerTitle: true,
          title: Text(" محاضر الاجتماع  "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),

        body: ListView(
          children: <Widget>[
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
            _ListTile(onTap: (){}  , name: nameMeeting , Date: DateMeeting),
          ],
        ),

      ),
    );
  }

  Container _ListTile(
  {
    String name = '' ,
    String Date= '' ,
    GestureTapCallback onTap
  }) {
    return Container( color: anWhite, margin: EdgeInsets.symmetric(horizontal:0  ,vertical: 3),
            child: new ListTile( onTap: onTap ,  title: Text( "${name}" , textAlign: TextAlign.end),
              subtitle: Text("${Date}" ,textAlign: TextAlign.end,) , leading: Icon(Icons.arrow_back_ios)),
          );
  }
}