import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import './my_BottomNavigation.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page_FollowDocument extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_FollowDocument> {

  String _Number = "782632" ;
  String _DateSend = "3/9/2020" ;
  String _UserSend = "انور شحاتة عبد الزاهر " ;
  String _Case = "جازي تنفيذ المعاملة" ;
  String _TypeCase = "سري" ;
  String _DateEnd = "7/1/2020" ;

  String dropdownValue = "لجنة التخطيط والمتابعة ";

  int _currentStep = 0 ;


  void _FunFilePdf(){
    print("عرض المعاملة " );
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
          title: Text(" حالة المعامبة "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){}),
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          ],
        ),


        body: ListView(
          children: <Widget>[

            //=============================معلومات المعاملة==
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Text("  رقم المعاملة:    ${_Number}"  , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                  new Text("تاريخ رفع المعاملة :    ${_DateSend}"  , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                  new Text("القائم برفع المعاملة:    ${_UserSend}" , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                  new Text("حالة المعاملة:   ${_Case}"  , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                  new Text("نوع المعاملة :    ${_TypeCase}" , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                  new Text("الوقتي المتبقي :   ${_DateEnd}" , style: TextStyle(fontSize: 17),),
//                  new Divider(),
                ],
              ),
            ),


            //=============================زر عرض المعاملة==
            my_ButtonIcon(textButton: "عرض المعاملة" , fontSize: 20 , icon: Icons.picture_as_pdf , vertical: 20,
                onPressed: (){_FunFilePdf();} , colorButton: anWhite , colorText: anRed , colorIcons: anRed , radiusButton: 10 ,
                heightButton: 60 , horizontal: 20 , colorBorderSide: anRed , widthBorderSide: 1 ,elevation: 3),



            Directionality(textDirection: TextDirection.rtl,
              child: Stepper(
                steps: _mySteps(),
                currentStep: this._currentStep,
                onStepTapped: (step){
                  setState(() {
                    this._currentStep = step;
                  });
                },
                //==== عند الضغط علي الخطوة التالية
                onStepContinue: (){
                  setState(() {
                    if(this._currentStep < this._mySteps().length -1){
                      this._currentStep = this._currentStep +1;
                    }else{
                      print("Completed check fields") ;
                    }
                  });
                },

                //==== عند الضغط علي رز Cancel
                onStepCancel: (){
                  setState(() {
                    if(this._currentStep > 0){
                      this._currentStep = this._currentStep -1;
                    }else{
                      this._currentStep = 0;
                    }
                  });
                },
              ),
            ),
            
          ],
        ),
        
        





      ),
    );
  }

  //===== هنا الستة التي تحتوي علي الخطوات
  List<Step> _mySteps(){
    List<Step> _steps = [

      Step(
          title:_TtitleRow(),
          content: _container(),
          state: StepState.complete,
          isActive: _currentStep > 0,
      ),

      Step(
          title:_TtitleRow(),
          content: _container(),
          state: StepState.complete,
          isActive: _currentStep > 1
      ),

      Step(
          title: _TtitleRow(),
          content: _container(),
          state: StepState.complete,
          isActive: _currentStep > 2
      ),

      Step(
          title:_TtitleRow(),
          content: _container(),
          state: StepState.complete,
          isActive: _currentStep > 3
      ),

    ];
    return _steps;
  }
  Row _TtitleRow() {
    return new Row(
          children: <Widget>[

          //= اسم الجهة  ================
          new Container(
            margin: EdgeInsets.symmetric(vertical: 5),

            color: anWhite,
            height: 70, width: MediaQuery.of(context).size.width - 170,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("مدير عام الطيران المدني " , style: TextStyle(fontSize: 20),),
                new Text("تم ارسال المعاملة" , style: TextStyle(color: anGreen),),
              ],
            ),
          ),

          //= اسم الجهة  ================
          new Container(
            color: anWhite,
            margin: EdgeInsets.symmetric(vertical: 0),
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("13/10/2019" , style: TextStyle(color: anGray),),
                new Text("9:30 صباحاً ", style: TextStyle(color: anGray),),
              ],
            ),
          ),

        ],);
  }
  Container _container() {
    return new Container(
          height: 250,  width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: anWhite,
              boxShadow: [new BoxShadow(color: Colors.grey.shade200, blurRadius: 3.0,),] ,
            borderRadius: BorderRadius.circular(0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[


              new Text(" تحديد الجها المرسل اليها " ,style: TextStyle(color: anGray),textAlign: TextAlign.end,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border.all(color: anGray ,width: 0),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        iconSize: 30,
                        elevation: 3,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['لجنة التخطيط والمتابعة ', 'اللجنة العليا لمعرض الكويت للطيران ', 'الجنة الوطنية لامن وتسهيلات سلامة الطيران ', 'اللجنة العليا للبحث والانقاذ ']                              .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value , style: TextStyle(fontSize: 14),),
                          );
                        }).toList(),
                      ),
                    ),


                  ],),
              ),

              my_TextFieldMaterial(elevation: 0 , maxLines: 4 , HintText: "اضافة ملاحظة")



            ],
        ),);
  }
}


