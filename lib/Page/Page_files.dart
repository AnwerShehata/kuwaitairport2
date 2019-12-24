  import 'package:flutter/material.dart';
  import '../ToolsApp/StyleApp.dart';
  import '../ToolsApp/WidgetApp.dart';
  import '../Page/Page_DirectorGeneral.dart';
  import '../Page/Page_General.dart';
  import '../Page/Page_Search.dart';
  import '../Components/My_Drawer.dart';
  import '../Page/Page_FollowDocument.dart';
  import '../Model/MyData_File.dart';
  import '../Components/NavigationBarHome.dart';
import 'HomePage.dart';


  class Page_files extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<Page_files> {

    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    void _FunFileDetails(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page_FollowDocument()),);
    }

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
            title: Text("المعاملات الماضية"),
            leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
            actions: <Widget>[
              new IconButton(icon: Icon(Icons.search), onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Search()),);}),
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



          body:ListView.builder(
            itemCount: DataKuwaitAirPort.length,
            itemBuilder: (BuildContext context,int index){
              return _ListContainer(
                nameFile: "${DataKuwaitAirPort[index].NameFile}" ,
                nameSection: "${DataKuwaitAirPort[index].NameSection}",
               TypeFile: "${DataKuwaitAirPort[index].TypeFile}",
                colorstatus: DataKuwaitAirPort[index].ColorFile,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page_FollowDocument(
                    NumberFile: DataKuwaitAirPort[index].NumberFile,
                    DateFile: DataKuwaitAirPort[index].DateFile,
                    StatusFile:DataKuwaitAirPort[index].StatusFile,
                    TimeEnd:DataKuwaitAirPort[index].TimeEnd,
                    TypeFile: DataKuwaitAirPort[index].TypeFile,
                    UserName: DataKuwaitAirPort[index].UserName,
                    JobNumber: DataKuwaitAirPort[index].NumberJob,
                  )),);
                }
              );
            },
          )
        ),
      );
    }

    Container _ListContainer({
      String nameFile = "عنوان المعاملة ",
      String nameSection = "اسم الجهة",
      String  TypeFile = "",
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
                  child: Align(alignment: Alignment.center,child: Text("${TypeFile}" , style: TextStyle(fontSize: 15),)),
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