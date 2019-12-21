import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page_NewTransaction extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_NewTransaction> {

  int radioGroup = 1;
  void _radioEventHandler(int radioValue){
    setState(() {
      radioGroup = radioValue;
      switch(radioGroup)
      {
        case 1:   print("عام ");
        ; break;

        case 2:    print("عاجل ");
        ; break;

        case 3:    print("هام ");
        ; break;

        case 4:    print("سري");
        ; break;

      }
    });
  }

  int _NumberDay = 3 ;

  void _FunAddDay(){
    print(" اضافة يوم  ");
  }

  void _FunAddDay2(){
    print(" حذف  يوم  ");
  }

    void _FunCamera(){
    print("  تصوير من الكاميرا  ");
  }

    void _FunAddFile(){
    print(" اضافة مستند جديد  ");
  }

    void _FunPreview(){
    print("معاينة المستندات  ");
  }

    void _FunSend(){
    print(" ارسال المعالمة ");
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
          title: Text(" اضافة معاملة جديدة  "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),

        body: ListView(children: <Widget>[

          //== تصوير من الكاميرا -اضافة مستند جديد   =============================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
            child: new Row(children: <Widget>[
              _Expanded(onTap: (){_FunCamera();},name: "تصوير من الكاميرا"  ,  iconButton: Icons.camera_alt ),
              _Expanded(onTap: (){_FunAddFile();},name: "اضافة مستند جديد "  ,  iconButton: Icons.add_circle_outline ),
            ],),
          ),

          //== تحديد الجهة المرسل اليها =============================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15  , vertical: 10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: anWhite,
                boxShadow: [new BoxShadow(color: Colors.grey.shade200, blurRadius: 3.0,),]
              ),
              child: new ListTile(
                title: Text("تحديد الجهة المرسل اليها " ,textAlign: TextAlign.end,),
                leading: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),


          //== موضوع المعاملة - الملاحظات  =============================
          new Container(
            child: Column(
              children: <Widget>[
                my_TextFieldMaterial(horizontal: 15 , elevation: 0  , textInputType: TextInputType.text  ,  HintText: "موضوع المعاملة") ,
                my_TextFieldMaterial(horizontal: 15 , elevation: 0 ,maxLines: 5 , HintText: "الملاحظات " ) ,
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Container(
                  height: 50, width: 170,
                  decoration: BoxDecoration(
                    color: anWhite,
                    borderRadius: BorderRadius.circular(60)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(  onTap: (){_FunAddDay();}, child: new CircleAvatar(child: Icon(Icons.add) , minRadius: 5,)),
                      Align( alignment: Alignment.center ,  child: new Text("${_NumberDay}" ,style: TextStyle(fontSize: 30),)),
                      InkWell(  onTap: (){_FunAddDay2();}, child: new CircleAvatar(child: Icon(Icons.add) , minRadius: 5,)),
                    ],
                  ),
                ),
                new Text(" عدد الايام  "),
              ],
            ),
          ),


          //==  حالة المعاملة - سري - هام - عاجل - عام =============================
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new Container(
                  child: Row(children: <Widget>[
                    new Text("عام " , style: TextStyle(fontSize: 18),) ,
                    new Radio(value: 1, groupValue: radioGroup, onChanged: _radioEventHandler),
                  ],),
                ),

                new Container(
                  child: Row(children: <Widget>[
                    new Text("عاجل " ,  style: TextStyle(fontSize: 18),) ,
                    new Radio(value: 2, groupValue: radioGroup, onChanged: _radioEventHandler),
                  ],),
                ),


                new Container(
                  child: Row(children: <Widget>[
                    new Text("هام " , style: TextStyle(fontSize: 18),) ,
                    new Radio(value: 3, groupValue: radioGroup, onChanged: _radioEventHandler),
                  ],),
                ),

                new Container(
                  child: Row(children: <Widget>[
                    new Text("سري" , style: TextStyle(fontSize: 18),) ,
                    new Radio(value: 4, groupValue: radioGroup, onChanged: _radioEventHandler),
                  ],),
                ),



              ],
            ),
          ),





          my_ButtonIcon(onPressed: (){_FunPreview();},horizontal: 15 , textButton: "معاينة المستندات "  ,
        heightButton: 60   , fontSize: 20 , icon: FontAwesomeIcons.eye,vertical: 10  , colorButton: anGrayText),


        my_ButtonIcon(onPressed: (){_FunSend();},horizontal: 15 , textButton: "رفع المعاملة "  ,
        heightButton: 60   , fontSize: 20 , icon: Icons.send  , colorButton: anRed),





        ],),
      ),
    );
  }

  Expanded _Expanded({
    String name = " اسم ازر ",
    IconData iconButton : Icons.add_circle_outline ,
    GestureTapCallback onTap ,
    }) {
    return Expanded(
              child: GestureDetector(onTap: onTap,
                child: new Container( height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: anGray)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Icon(iconButton , size: 40,),
                      new Text("${name}" , style: TextStyle(fontSize: 17),),
                    ],
                  ),
                ),
              ),
            );
  }
}