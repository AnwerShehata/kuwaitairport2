import 'package:flutter/material.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_General.dart';
import '../Page/HomePage.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/My_Drawer.dart';
import '../Page/Page_Notifications.dart';

class Page_Search extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_Search> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        key: _scaffoldKey,
        endDrawer: new My_Drawer(),


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




        appBar: AppBar(
          title: Text("بحث "),
          backgroundColor: anRed,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
            }),
            new IconButton(icon: Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
          ],
        ),



      ),
    );
  }
}