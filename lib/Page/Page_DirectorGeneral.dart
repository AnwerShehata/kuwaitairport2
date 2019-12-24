import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/Page_General.dart';
import '../Components/My_Drawer.dart';
import '../Page/Page_Notifications.dart';
import 'HomePage.dart';



class Page_DirectorGeneral extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_DirectorGeneral> {


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
          leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),); }),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
            }),
            new IconButton(icon: Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
          ],
        ),


        //====bottomNavigationBar===============================================
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), title: Text('الجهات المعنية')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('المدير العام')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('الرئيسية')),
          ],
          type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
          elevation: 0,
          backgroundColor: anWhite,
          onTap: (int tappedIndex){
            setState(() {
              switch( tappedIndex){
                case 0 : Navigator.push(context, MaterialPageRoute(builder: (context) => Page_DirectorGeneral()),);
                break;

                case 1 : Navigator.push(context, MaterialPageRoute(builder: (context) => Page_General()),);
                break;

                case 2 : Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                break;
              }
            });
          },
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