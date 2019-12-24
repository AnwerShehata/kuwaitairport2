import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/Page_General.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_Search.dart';
import '../Components/My_Drawer.dart';
import '../Components/NavigationBarHome.dart';
import 'HomePage.dart';


class Page_MeetingMinutes extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_MeetingMinutes> {

  String nameMeeting  = 'عنوان المحضر' ;
  String DateMeeting  = '9/10/2020' ;

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
          title: Text(" محاضر الاجتماع  "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Search()),);
            }),
            new IconButton(icon: Icon(Icons.menu), onPressed: ()=> _scaffoldKey.currentState.openEndDrawer()),
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