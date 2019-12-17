import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import './my_BottomNavigation.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page_DirectorGeneral extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_DirectorGeneral> {
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
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),


        body: ListView(
          children: <Widget>[

            //= =========================مكتب رئيس الطيران المدني==
            new ExpansionTile(
              title: Text("مكتب رئيس الطيران المدني ") ,
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
            new Divider(),

            //========================لجان يترأسها رئيس الطيران المدني=
            new ExpansionTile(
              title: Text("لجان يترأسها رئيس الطيران المدني  ") ,
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
            new Divider(),


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