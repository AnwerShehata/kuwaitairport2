import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page_Sectors extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_Sectors> {


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
          title: Text("القطاعات"),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),


        body: ListView(
          children: <Widget>[

            SizedBox(height: 20),

            _Container(context , onTap: (){} , NameSectors: "التخطيط والمتابعة "  , Number1: "" , Number2: "" , Number3: "" ),
            _Container(context , onTap: (){} , NameSectors: "سلامة الطيران والنقل الجوي "  , Number1: "" , Number2: "" , Number3: "" ),
            _Container(context , onTap: (){} , NameSectors: "خدمات الملاحة الجوية"  , Number1: "" , Number2: "" , Number3: "" ),
            _Container(context , onTap: (){} , NameSectors: "مطار الكويت الدولي"  , Number1: "" , Number2: "" , Number3: "" ),
            _Container(context , onTap: (){} , NameSectors: "الإدارة والمالية والقانونية"  , Number1: "" , Number2: "" , Number3: "" ),

          ],
        ),



      ),
    );
  }

  Container _Container(BuildContext context,{
    GestureTapCallback onTap ,
    String NameSectors = "  اسم الادارة " ,
    String Number1 = "123" ,
    String Number2 = "987" ,
    String Number3 = "898" ,
  }) {
    return new Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: <Widget>[

                //=== اسم الادارة ==========================
                GestureDetector(onTap:onTap,
                  child: new Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      color: anWhite,
                      borderRadius: BorderRadius.circular(10),
                        boxShadow: [new BoxShadow(color: Colors.grey.shade300, blurRadius: 5.0,),]
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Icon(Icons.arrow_back_ios),
                        new Text(" ${NameSectors}  " , style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),

                //=== حالة المعاملة ==========================
                new Container(
                  height: 70,
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: <Widget>[

                      new Expanded(child: GestureDetector(onTap: _Fundone,
                        child: Container(child: Column(
                          children: <Widget>[

                            new Expanded(flex: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child:Align( alignment: Alignment.center, child: new Text(" المنجزة ",style: TextStyle(color: anWhite ,fontSize: 16))),
                                  decoration: BoxDecoration(
                                      color: anGreen ,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(0))
                                  ),
                                )),

                            new Expanded(flex: 3,
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

                            new Expanded(flex: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child:Align( alignment: Alignment.center, child: new Text("العالقة",style: TextStyle(color: anWhite , fontSize: 16))),
                                  decoration: BoxDecoration(
                                    color: anRed ,
                                  ),
                                )),

                            new Expanded(flex: 3,
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

                            new Expanded(flex: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child:Align( alignment: Alignment.center, child: new Text("قيد التنفيذ ",style: TextStyle(color: anWhite ,fontSize: 16))),
                                  decoration: BoxDecoration(
                                      color: anYellow ,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(0))
                                  ),
                                )),

                            new Expanded(flex: 3,
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
          );
  }
}