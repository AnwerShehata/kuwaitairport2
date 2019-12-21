import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/HomePage.dart';
import '../Page/Page_General.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_Search.dart';
import '../Components/My_Drawer.dart';




class Page_Notifications extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_Notifications> {

  String IDjob = "566577" ;
  String Section = "إدارة التخطيط والمتابعة" ;

  void _FunUser(){
    print("صفحة المستخدم ");
  }

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
          title: Text("الاشعارات "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Search()),);
            }),

            new IconButton(icon: Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState.openEndDrawer()
            ),
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




        body: Directionality(textDirection: TextDirection.rtl,
          child: ListView(
            children: <Widget>[

              new Text("  -اليوم  " ,style: TextStyle(fontSize: 17  ,color: Colors.grey),),

              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),
              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),
              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),
              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),
              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),
              _ContainerNot(context , onTap: (){}  , nameUser: "اسم المستخدم" , IDjobDwon: "000000" , SectionDwon: "اسم الجهة التابع لها" ,Time: "PM 9:30" , Data: "10/11/2019" , TextNotification: "تم ارسال الملف"),

            ],
          ),
        ),



      ),
    );
  }

  Widget _ContainerNot(BuildContext context , {
    String nameUser : "اسم المستخدم ",
    String IDjobDwon : "000000",
    String TextNotification : "",
    String SectionDwon : " اسم الجهة التابع لها " ,
    String Time : "PM 9:30" ,
    String Data : "10/11/2019" ,
    GestureTapCallback onTap
    }) {
    return GestureDetector(onTap: onTap,
      child: new Container(
                margin: EdgeInsets.symmetric(horizontal: 10 ,vertical: 20),
                child: Column(
                  children: <Widget>[

                    //اسم المستخدم  ------------------------------------
                    InkWell(onTap: _FunUser,
                      child: new Row(children: <Widget>[
                        new Icon(Icons.chat_bubble_outline , color: anRed,) ,
                        new Text("   ${nameUser}", style: TextStyle(fontSize: 19, color: anRed),)
                      ],),
                    ),

                    //الرقم الوظيفي - الجهة  ------------------------------------
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Text(" الرقم الوظيفي : ${IDjobDwon}  " , style: TextStyle(fontSize: 15, color: anGray),),
                        new Text(" الجهة : ${SectionDwon}  " , style: TextStyle(fontSize: 15, color: anGray),)
                      ],
                    ),

                    new Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: anWhite,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [new BoxShadow(color: Colors.grey.shade100, blurRadius: 3.0,),]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Align(alignment: Alignment.topRight,child: new Text("${TextNotification}")),

                          new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              new Text("${Data}" , style: TextStyle(color: anGray),),
                              SizedBox(width: 10),
                              new Text("${Time} "  , style: TextStyle(color: anGray),),
                            ],
                          )

                        ],
                      ),
                    )


                  ],
                ),
              ),
    );
  }
}