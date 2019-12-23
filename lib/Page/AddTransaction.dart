import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../Components/My_Drawer.dart';
import '../Page/Page_NewTransaction.dart';
import '../Page/Page_Search.dart';
import '../Page/Page_files.dart';
import '../Components/NavigationBarHome.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_General.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AddTransaction extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<AddTransaction> {

  void _FunButtonAdd(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_NewTransaction()),);
  }

  //-------- ز ر فتح  Drawer  ------
  void _FunOpenEndDrawer(){
    _scaffoldKey.currentState.openEndDrawer();
  }

  void _FunSearch(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Search()),);
  }

  //--------  رز العود للصفجة السابقة ------
  void _FunBack(){
  Navigator.pop(context);
  }

  void _FunImplementation(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  void _FunStuck(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  void _Fundone(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _pageIndex = 1;





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

                case 2 : Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarHome()),);
                break;
              }
            });
          },
        ),



        //====body===============================================
        body: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: <Widget>[

            // ============= هنا الــ Container الخاص بالصور   ==================================
            new Container(
              height: 290,
              decoration: BoxDecoration(
                  color: anRed,
                  image: DecorationImage(fit: BoxFit.fill, image: AssetImage("asset/Imag/bg.jpg"))
              ),
            ),


            // ===============================================
            Padding(
              padding: const EdgeInsets.only(top: 60 ,left: 10 , right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  //---------- penEndDrawer ---------------------------
                  new IconButton(
                      icon: Icon(Icons.arrow_back_ios  ,color: anWhite, size: 30,),
                      onPressed: (){Navigator.pop(context);}
//                              onPressed: () {},
                  ),

                  //---------- penEndDrawer ---------------------------
                  new IconButton(
                      icon: Icon(Icons.menu  ,color: anWhite, size: 30,),
                      onPressed: () => _scaffoldKey.currentState.openEndDrawer()
//                              onPressed: () {},
                  ),



                ],
              ),
            ),

                Column(
                children: <Widget>[
                SizedBox(height: 250),
                Container(
                width: MediaQuery.of(context).size.width-10,
                child: Column(
                children: <Widget>[

                  _Addfile(context , name: " اضافة معاملة جديد " ,onTap: (){_FunButtonAdd();}),

                SizedBox(height: 50),
                _ButtonDetector( onTap:(){_FunImplementation();} ,Name: "معاملات قيد التنفيذ"  ,Number: "123", colorShadw: Colors.amber[100] , colortage: anYellow ),
                _ButtonDetector( onTap:(){_FunStuck();} ,Name: "المعاملات العالقة"  ,Number: "53", colorShadw: Colors.red[100] , colortage: Colors.red ),
                _ButtonDetector( onTap:(){_Fundone();} ,Name: "المعاملات المنجذة"  ,Number: "324", colorShadw: Colors.green[100] , colortage: anGreen ),
                ],),),],
                )


          ],
        ),

      ),
    );
  }


  GestureDetector _Addfile(BuildContext context,{
    String name = " ",
    GestureTapCallback  onTap ,
   }) {
    return GestureDetector(onTap: onTap,
                  child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width-65,
                  decoration: BoxDecoration(
                      color: anWhite,
                      borderRadius: BorderRadius.circular(10) ,
                      boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 2.0,),]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      new Icon(Icons.add ,size: 40),
                      new Text(name, style: TextStyle(fontSize: 20),),
                    ],
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
