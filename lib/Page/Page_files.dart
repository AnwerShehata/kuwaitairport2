  import 'package:flutter/material.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/material.dart';
  import '../ToolsApp/StyleApp.dart';
  import '../ToolsApp/WidgetApp.dart';
  import './my_BottomNavigation.dart';

  import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  class Page_files extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<Page_files> {
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
            title: Text("المعاملات الماضية"),
            leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
            actions: <Widget>[
              new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
              new IconButton(icon: Icon(Icons.search), onPressed: (){}),
            ],
          ),


          body: ListView(
            children: <Widget>[

              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
              _ListContainer(),
            ],
          ),


        ),
      );
    }

    Container _ListContainer({
      String nameFile = "عنوان المعاملة ",
      String nameSection = "اسم الجهة",
      String  statusTransaction = "",
      Color colorstatus :anYellow,
      GestureTapCallback onTap,
      }) {
      return new Container(
              height: 65,
              margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
              decoration: BoxDecoration(
                color: anWhite,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [new BoxShadow(color: Colors.grey.shade100, blurRadius: 5.0,),]
              ),
              child:Row(
                children: <Widget>[

                  Expanded(flex: 4,child: new Container(
                    child: ListTile(
                      onTap: onTap,
                      title: Text("${nameFile}" , textAlign: TextAlign.end),
                      subtitle: Text("${nameSection}" , textAlign: TextAlign.end),
                      leading: Icon(Icons.arrow_back_ios),
                      isThreeLine: true,
                    ),
                  )),

                  Expanded(child: new Container( height: 65,
                  child: Align(alignment: Alignment.center,child: Text("${statusTransaction}" , style: TextStyle(fontSize: 20),)),
                    decoration: BoxDecoration(
                        color: colorstatus,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [new BoxShadow(color: Colors.grey.shade100, blurRadius: 5.0,),]
                    ),
                  )
                  ),

                ],
              )
            );
    }
  }