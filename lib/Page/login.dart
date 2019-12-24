import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './HomePage.dart';

class login extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<login> {

  TextEditingController _User = new TextEditingController();

  String user ;
  String pass;
  void _ButtonLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        body: Directionality(textDirection: TextDirection.rtl,
          child: ListView(
            children: <Widget>[
              
              

              SizedBox(height: 40),
              //---------------------- Image Logo ---------------------------------
              new Image.asset("asset/Imag/Logo.png",width: 200, height: 200,),
              SizedBox(height: 40),


              //---------------------- الرقم الوظيفي---------------------------------
              Padding( padding: const EdgeInsets.symmetric(horizontal: 30 ,vertical: 20),
                child: new TextField(
                  controller: _User,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "الرقم الوظيفي" ,
                    icon: Image.asset("asset/Imag/numberjob.png" ,width: 30,),
                  ),
                ),
              ),


              //---------------------- كلمة المرور---------------------------------
              Padding( padding: const EdgeInsets.symmetric(horizontal: 30),
                child: new TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: " كلمة المرور" ,
                    icon: Image.asset("asset/Imag/password.png" ,width: 30,),
                  ),
                ),
              ),
              SizedBox(height: 50),


              //---------------------- Face ID---------------------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: new Row(
                  children: <Widget>[
                  new Image.asset("asset/Imag/faceid.png"),
                  Flexible(child: new Text(" فعل Face ID في الاعدادات لتسجيل الدخول بطريقة اسرع وأكثر امانا " ,style: TextStyle(fontSize: 15) , textAlign:TextAlign.center ,)),
                ],),
              ),



              //---------------------- زر تسجيل الدخول---------------------------------
              my_Button( horizontal: 20 ,vertical: 20, radiusButton: 10 ,heightButton: 60 , colorButton: anRed ,
                  onBtnclicked: (){_ButtonLogin();} , textButton: "تسجيل الدخول" , fontSize: 25)


            ],
          ),
        ),


      ),
    );
  }
}