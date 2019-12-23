import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/Page_General.dart';
import '../Components/My_Drawer.dart';
import '../Page/Page_Notifications.dart';
import '../Components/NavigationBarHome.dart';



class Dup_DirectorGeneral extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Dup_DirectorGeneral> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        key: _scaffoldKey,
        endDrawer: new My_Drawer(),




        //------ AppBar ---------------------------------------------------
        appBar: AppBar(
          backgroundColor: anRed,
          elevation: 0,
          centerTitle: true,
          title: Text(" الجهات المعنية "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarHome()),); }),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
            }),
            new IconButton(icon: Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
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
          ],
        ),





      ),
    );
  }
}