import 'dart:io';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/Page_General.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_files.dart';
import '../Components/My_Drawer.dart';
import '../Page/Page_NewTransaction.dart';
import 'HomePage.dart';
import 'package:image_picker/image_picker.dart';



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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  void _FunStuck(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  void _Fundone(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_files()),);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  File _image;
  Future _ImageGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      Navigator.pop(context,true);
      _image = image;
    });
  }

  Future _ImageCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      Navigator.pop(context,true);
      _image = image;
    });
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: Border(bottom: BorderSide(width: 1)),
          title: Center(child: Column(
            children: <Widget>[
              CircleAvatar(child: Icon(Icons.add_a_photo ,size: 50, color: anWhite,) ,maxRadius: 50, backgroundColor: anGray,),
            Text("تغيير صورة البروفايل   " , style: TextStyle(fontFamily: "Cairo"),)
            ],
          ),),
          content: Container(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                my_ButtonIcon(heightButton: 50 ,textButton: "كاميرا" ,fontFamily: "Cairo",
                icon: Icons.camera_alt , colorButton: anRed ,radiusButton: 10 , onPressed: (){} , horizontal: 5),
                my_ButtonIcon(heightButton: 50 ,textButton: "المعرض"  ,fontFamily: "Cairo",
                    icon: Icons.image , colorButton: anRed ,radiusButton: 10 , onPressed: (){}),
              ],
            ),
          ),
          elevation: 10,
          actions: <Widget>[
          ],
        );
      },
    );
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
          title: Text("الملف الشخص "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
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



        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Page_NewTransaction()),);
          },
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



                  ClipOval(
                    child: new SizedBox(
                      width: 170,
                      height: 170,
                      child: (_image!=null)?Image.file(_image, fit: BoxFit.cover):Image.network(
                        "https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  new Positioned(
                    bottom: -5, left: 10,
                      child: GestureDetector(onTap: (){_showDialog();},
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