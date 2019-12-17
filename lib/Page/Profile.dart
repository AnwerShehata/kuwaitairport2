import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import './my_BottomNavigation.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Profile extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Profile> {

  String imageURl = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  String name = "انور شحاتة عبد الزاهر" ;
  String nameSection = " إدارة التخطيط والمتابعة " ;
  String IDJob = "768876 " ;

  String Number1 = "123" ;
  String Number2 = "987" ;
  String Number3 = "898" ;

  void _FunImplementation(){
    print("قيد التنفيذ ");
  }

  void _FunStuck(){
    print(" معلقة ");
  }

  void _Fundone(){
    print(" منجذة ");
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
          title: Text("الملف الشخص "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: anRed,
          child: Icon(Icons.add ,size: 40, color: anWhite,),
          ),


        body: ListView(
          children: <Widget>[

            SizedBox(height: 20),

            //--------Image USer------------------
            Center(
              child: new Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  my_ImageCircleAccount(width: 150 , imagURL: imageURl , borderColor: anGray),
                  new Positioned(
                    bottom: -5, left: 10,
                      child: GestureDetector(onTap: (){},
                      child: CircleAvatar( backgroundColor: anGrayText, child: Icon(Icons.edit , color: anWhite,))))
                ],
              ),
            ),

            //--------بيانات المستخدم ------------------
            SizedBox(height: 30),
            new Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Text("الاسم :    ${name}  " ,style: TextStyle(fontSize: 18),),
                  new Text("الجهة :  ${nameSection}  " ,style: TextStyle(fontSize: 18),),
                  new Text("الرقم الوظيفي  :  ${IDJob}  " ,style: TextStyle(fontSize: 18),),
                ],
              ),
            ),


            //--------معاملات المستخدم ------------------
            new Divider(color: anGray, height: 60,),
            new Container(
              height: 90,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[

                  new Expanded(child: GestureDetector(onTap: _Fundone,
                    child: Container(child: Column(
                      children: <Widget>[

                        new Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child:Align( alignment: Alignment.center, child: new Text(" المنجزة ",style: TextStyle(color: anWhite ,fontSize: 16))),
                              decoration: BoxDecoration(
                                  color: anGreen ,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                              ),
                            )),

                        new Expanded(
                            child: Container( width: MediaQuery.of(context).size.width,
                              child:  Align(alignment: Alignment.center , child: new Text("${Number1}" ,style: TextStyle(fontSize: 20,color: anWhite))),
                              decoration: BoxDecoration(
                                  color: anGray,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
                              ),
                            )),

                      ],
                    ),),
                  )),
                  new VerticalDivider(width: 0.5,),

                  new Expanded(child: GestureDetector(onTap: _FunStuck,
                    child: Container(child: Column(
                      children: <Widget>[

                        new Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child:Align( alignment: Alignment.center, child: new Text("العالقة",style: TextStyle(color: anWhite , fontSize: 16))),
                              decoration: BoxDecoration(
                                  color: anRed ,
                              ),
                            )),

                        new Expanded(
                            child: Container( width: MediaQuery.of(context).size.width,
                              child:  Align(alignment: Alignment.center , child: new Text("${Number2}" ,style: TextStyle(fontSize: 20,color: anWhite))),
                              decoration: BoxDecoration(
                                  color: anGray,
                              ),
                            )),

                      ],
                    ),),
                  )),
                  new VerticalDivider(width: 0.5,),

                  new Expanded(child: GestureDetector(onTap: _FunImplementation,
                    child: Container(child: Column(
                      children: <Widget>[

                        new Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child:Align( alignment: Alignment.center, child: new Text("قيد التنفيذ ",style: TextStyle(color: anWhite ,fontSize: 16))),
                              decoration: BoxDecoration(
                                  color: anYellow ,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                              ),
                            )),

                        new Expanded(
                            child: Container( width: MediaQuery.of(context).size.width,
                              child:  Align(alignment: Alignment.center , child: new Text("${Number2}" ,style: TextStyle(fontSize: 20,color: anWhite))),
                              decoration: BoxDecoration(
                                  color: anGray,
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                              ),
                            )),

                      ],
                    ),),
                  )),

                ],
              ),
            )

          ],
        ),





      ),
    );
  }
}