import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import './my_BottomNavigation.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Page_PrentFile extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_PrentFile> {

  void _FunDownload(){
    print("Download");
  }
  void _FunShare(){
    print('Share');
  }
  void _FunPrint(){
    print('Print');
  }

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
          title: Text(" مستند المعاملة  "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),

        bottomNavigationBar: Container(
          height: 90, color: anWhite,
          child:Align(alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _GestureDetector(onTap: (){_FunShare();} , name: "مشاركة " ,icon: "asset/Imag/share.png"),
                new VerticalDivider(),
                _GestureDetector(onTap: (){_FunPrint();} , name: "طباعة  " , icon: "asset/Imag/print.png"),
                new VerticalDivider(),
                _GestureDetector(onTap: (){_FunDownload();} , name: "تحميل" , icon: "asset/Imag/download.png"),
              ],
            ),
          ),
        ),



        body: Container(
        ),




      ),
    );
  }

  GestureDetector _GestureDetector(
  {
    String  name  = "" ,
    String icon = "" ,
    GestureTapCallback onTap ,
    }) {
    return GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: new Column(
                children: <Widget>[
                new Image.asset("${icon}" ,width: 30,),
                new Text(" ${name}  " ,style: TextStyle(color: anGrayText),),
                ],
                ),
              ),
            );
  }
}