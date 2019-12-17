import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import './my_BottomNavigation.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AddTransaction extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<AddTransaction> {

  void _FunButtonAdd(){
    print("_ButtonAdd");
  }

  void _FunNotifications(){
    print("_Notifications");
  }

  void _FunSearch(){
    print("Search");
  }

  void _FunBack(){
    print("Back");
  }

  void _FunImplementation(){
    print("قيد التنفيذ ");
  }

  void _FunStuck(){
    print(" معلقة ");
  }

  void _Fundone(){
    print(" منجذة ");
  }



  List<BottomNavigationBarItem>  _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.phone) ,title: Text("المدير العام")));
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.shopping_cart) ,title: Text("الجهات المعنية")));
    _items.add(new BottomNavigationBarItem(icon: Icon(Icons.star) ,title: Text("الرئيسية")));
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        //====bottomNavigationBar===============================================
        bottomNavigationBar: BottomNavigationBar(
          items: _items,
          type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
          currentIndex: _index,
          fixedColor: Colors.blue,
          onTap: (int item){
            setState(() {
              _index = item;
              _value = "${_index.toString()}";
              switch(item){
              //عند الضغط علي العنصر الاول  الذي يحمل رقم 0 سوف يتم تنفيذ الكود التالي
                case 0:{setState(() { _value = "Anwar"; });}
                break;

              //عند الضغط علي العنصر الاول  الذي يحمل رقم 1 سوف يتم تنفيذ الكود التالي
                case 1:{setState(() { _value = "shehata"; });}
                break;

              //عند الضغط علي العنصر الاول  الذي يحمل رقم 2 سوف يتم تنفيذ الكود التالي
                case 2:{setState(() { _value = "Ali"; });}
                break;
              }
            });
          },
        ),

        //====body===============================================
        body: Container(
          child: Column(
            children: <Widget>[

              new Stack(
                overflow: Overflow.visible,
                children: <Widget>[

                  //-------- صور المطار --------------------------------
                  new Container(
                    height: 300,
                    decoration: BoxDecoration(
                        color: anRed,
                        image: DecorationImage(fit: BoxFit.fill, image: AssetImage("asset/Imag/bg.jpg"))
                    ),
                  ),

                  //--------------- زر المنيو وزر الاشعارات  ------------------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 50 ,left: 20 , right: 20),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        
                        new IconButton(icon: Icon(Icons.arrow_back_ios , color: anWhite,), onPressed:_FunBack),
                        new Row(
                          children: <Widget>[
                            new IconButton(icon: Icon(Icons.notifications_active , color: anWhite, size: 30,), onPressed: _FunNotifications),
                            new IconButton(icon: Icon(Icons.search , color: anWhite, size: 30,), onPressed: _FunSearch),
                          ],
                        )
                        
                      ],
                    ),
                  ),



                  Positioned(
                    top: 260,  right: 30,   left: 30,
                    child: GestureDetector(onTap: _FunButtonAdd,
                      child: new Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: anWhite,
                            borderRadius: BorderRadius.circular(10) ,
                            boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 4.0,),]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new Icon(Icons.add_circle_outline ,size: 50),
                            new Text("اضافة معاملة جديدة " , style: TextStyle(fontSize: 25),),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],),
              new SizedBox(height: 60),

              _ButtonDetector( onTap:(){_FunImplementation();} ,Name: "معاملات قيد التنفيذ"  ,Number: "123", colorShadw: Colors.amber[100] , colortage: anYellow ),
              _ButtonDetector( onTap:(){_FunStuck();} ,Name: "المعاملات العالقة"  ,Number: "53", colorShadw: Colors.red[100] , colortage: Colors.red ),
              _ButtonDetector( onTap:(){_Fundone();} ,Name: "المعاملات المنجذة"  ,Number: "324", colorShadw: Colors.green[100] , colortage: anGreen ),

            ],
          ),
        ),

      ),
    );
  }

  GestureDetector _ButtonDetector({
    String Name : "حالة المعاملة" ,
    String Number : "000",
    Color colorShadw : Colors.red ,
    Color colortage : Colors.red ,
    Color colorText : Colors.white ,
    GestureTapCallback onTap ,
    }) {
    return GestureDetector(onTap: onTap,
              child: new Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                decoration: BoxDecoration(
                  color: anWhite, borderRadius: BorderRadius.circular(10),
                  boxShadow: [new BoxShadow(color:colorShadw, blurRadius: 5.0,),]
                ),
                child: Row(
                  children: <Widget>[
                    new Expanded(child: Icon(Icons.arrow_back_ios)),
                    new Expanded(flex:4,
                    child: Container(child: Text("$Name", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),)),

                    new Expanded(flex: 2,
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            color: colortage,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10) , topRight: Radius.circular(10))
                          ),
                          child: Align(alignment: Alignment.center,child: Text("$Number" ,style: TextStyle(fontSize: 25 ,color: colorText),)),
                        )),
                  ],
                ),
              ),
            );
  }
}