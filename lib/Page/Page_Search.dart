import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kuwaitairport/Components/My_AppBar.dart';
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

  //-------------- radioGroup  ----------------------------------------------------
  int radioGroup = 1;
  void _radioEventHandler(int radioValue){
    setState(() {
      radioGroup = radioValue;
      switch(radioGroup)
      {
        case 1: print(" محضر اجتماع ")
        ; break;

        case 2: print(" معاملات ")
        ; break;
      }
    });
  }


  //-------------- Button Shett  ----------------------------------------------------
  String name = "تحديد الجهة";
  void _ButtonSheet(){
    showModalBottomSheet(context: context,
        builder: (BuildContext context)
    {
      return new Container(
        height: 360,
        color: anWhite,
        padding: EdgeInsets.all(2.0),
        child:  new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            new ListTile(title: Text("كل الجهات " , style: TextStyle(fontFamily: "Cairo"),textAlign: TextAlign.end,), onTap: (){ setState(() {
              name = "كل الجهات";
              Navigator.pop(context);
            }); },),
            new Divider(),


            new ListTile(title: Text(" التخطيط والمتابعة  " , style: TextStyle(fontFamily: "Cairo"),textAlign: TextAlign.end,), onTap: (){ setState(() {
              name = " التخطيط والمتابعة ";
              Navigator.pop(context);
            }); },),
            new Divider(),


            new ListTile(title: Text("سلامة الطيران والنقل الجوي " , style: TextStyle(fontFamily: "Cairo"),textAlign: TextAlign.end,), onTap: (){ setState(() {
              name = "سلامة الطيران والنقل الجوي ";
              Navigator.pop(context);
            }); },),
            new Divider(),


            new ListTile(title: Text("مطار الكويت الدولي " , style: TextStyle(fontFamily: "Cairo"),textAlign: TextAlign.end,), onTap: (){ setState(() {
              name = "مطار الكويت الدولي ";
              Navigator.pop(context);
            }); },),
            new Divider(),


            new ListTile(title: Text("الإدارة والمالية والقانونية " , style: TextStyle(fontFamily: "Cairo"),textAlign: TextAlign.end,), onTap: (){ setState(() {
              name = "الإدارة والمالية والقانونية";
              Navigator.pop(context);
            }); },),

          ],
        ),
      );
    });
  }


  DateTime _currentDate = new DateTime.now();
  Future<Null>_SetDateTo(BuildContext context) async{
    final DateTime _seldateTo = await showDatePicker(
        context: context,
        initialDate: _currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2030),
    );

    if(_seldateTo != null){
      setState(() {
        _currentDate =_seldateTo;
      });
    }
  }

  DateTime _currentDate2 = new DateTime.now();
    Future<Null>_SetDateFrom(BuildContext context) async{
    final DateTime _seldateFrom = await showDatePicker(
        context: context,
        initialDate: _currentDate2,
        firstDate: DateTime(1990),
        lastDate: DateTime(2030),
    );

    if(_seldateFrom != null){
      setState(() {
        _currentDate2 =_seldateFrom;
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    String _formattedDate = new DateFormat.yMd().format(_currentDate);
    String _formattedDate2 = new DateFormat.yMd().format(_currentDate2);

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        key: _scaffoldKey,
        endDrawer: new My_Drawer(),

        //====AppBar=======================================================
        appBar: My_AppBar(),


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


        //====body==========================================================
        body: ListView(
          children: <Widget>[

            SizedBox(height: 50),
            my_TextField(horizontal: 20 , Radius: 0 , hintText: "بحث"  , vertical: 10),
            // البحث في المعاملات او محضر اجتماع

            //======= معاملات محضر اجتماع   ==========
            Container(
            margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            decoration: BoxDecoration(
                color: anWhite,
                border: Border.all(color: anGrayText ,width: 0.2)
            ),
            child: new Row(
              children: <Widget>[
                Flexible(child: new RadioListTile(value: 1, groupValue: radioGroup, onChanged: _radioEventHandler , title: Text(" محضر اجتماع "),)),
                Flexible(child: new RadioListTile(value: 2, groupValue: radioGroup, onChanged: _radioEventHandler , title: Text(" معاملات "),)),
              ],
            ),
          ),


            //======= فترة البحث من الي    ==========
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
              color: anWhite,
                border: Border.all(color: anGrayText ,width: 0.2)
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Row(
                    children: <Widget>[
                      InkWell(onTap: (){_SetDateTo(context);},child: new Text("${_formattedDate}",style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: anRed),)) ,
                      new Text(" : الي") ,
                    ],
                  ),
                  SizedBox(width: 20),

                  new Row(
                    children: <Widget>[
                      InkWell(onTap: (){_SetDateFrom(context);},child: new Text("${_formattedDate2}",style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: anRed),)) ,
                      new Text("  :  بحث بالتاريخ من  ") ,
                    ],
                  ),


                ],
              ),
            ),

            //======= تحديد الجهة التي تريد البحث فيها   ==========
            GestureDetector(onTap: (){_ButtonSheet();},
              child: Container(
                  decoration: BoxDecoration(
                      color: anWhite,
                      border: Border.all(color: anGrayText ,width: 0.2)
                  ),
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 7),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(Icons.arrow_drop_down),
                    new Text(" ${name}   "),
                  ],
                )
              ),
            ),


            //======= زر البحث  ==========
            my_ButtonIcon(
                horizontal: 20 , vertical:0 , icon: Icons.search , textButton: "بحث " ,
                fontSize: 25 , onPressed: (){} , colorButton: anRed , radiusButton: 5
            )

          ],
        ),

      ),
    );
  }
}