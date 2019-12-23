import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/NavigationBarHome.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dup_General extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Dup_General> {
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
          title: Text(" الجهات المعنية "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarHome()),);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),


        body: ListView(
          children: <Widget>[
            //==================================== المدير العام=
            new ExpansionTile(
              title: Text(" المدير العام  ") ,
              backgroundColor: anWhite,
              children: <Widget>[

                new ExpansionTile(title: Text("إدارة مكتب المدير العام ") ,),
                new ExpansionTile(title: Text("نائب المدير العام للشئون الادارية والمالية والقانونية ")),
                new ExpansionTile(title: Text("نائب المدير العام لشئون سلامة الطيران والنقل الجوي")),
                new ExpansionTile(title: Text("نائب المدير العام لشئون مطار الكويت الدولي")),
                new ExpansionTile(title: Text("نائب المدير العام لشئون التخطيط والمشاريع")),
                new ExpansionTile(title: Text("نائب المدير العام لشئون خدمات الملاحة الجوية")),


              ],
            ),

          ],
        ),





      ),
    );
  }
}