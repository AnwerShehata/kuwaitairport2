import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_General.dart';
import '../Components/My_Drawer.dart';
import '../Components/NavigationBarHome.dart';
import '../Page/Page_Notifications.dart';
import '../Page/Page_PrentFile.dart';
import 'HomePage.dart';




class Page_FollowDocument extends StatefulWidget {

  final String NumberFile ;
  final  String DateFile ;
  final  String UserName;
  final  String StatusFile ;
  final  String TypeFile ;
  final  String TimeEnd ;
  final  String JobNumber ;

  const Page_FollowDocument({Key key, this.NumberFile, this.DateFile, this.UserName, this.StatusFile, this.TypeFile, this.TimeEnd ,this.JobNumber}) : super(key: key);

  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<Page_FollowDocument> {

  String dropdownValue = "لجنة التخطيط والمتابعة ";

  int _currentStep = 0 ;


  void _FunFilePdf(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page_PrentFile()),);
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
          title: Text(" حالة المعامبة "),
          leading: IconButton(icon:Icon(Icons.arrow_back_ios), onPressed: (){ Navigator.pop(context);}),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.notifications_active), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
            }),
            new IconButton(icon: Icon(Icons.menu), onPressed: () => _scaffoldKey.currentState.openEndDrawer() ),
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


        body: ListView(
          children: <Widget>[

            //=============================معلومات المعاملة==
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  _buildRow(Name: " : القائم برفع المعاملة ",Value: "${widget.UserName}"),
                  _buildRow(Name: " : الرقم الوظيفي     ",Value: "${widget.JobNumber}"),
                  _buildRow(Name: " :  رقم المعاملة   ",Value: "${widget.NumberFile}"),
                  _buildRow(Name: "  : تاريخ رفع المعاملة",Value:"${widget.DateFile}"),
                  _buildRow(Name: " :  حالة المعاملة   " , Value:"${widget.StatusFile}"),
                  _buildRow(Name: "   : نوع المعاملة  " , Value:"${widget.TypeFile}"),
                  _buildRow(Name: " :  الوقتي المتبقي       " , Value:"${widget.TimeEnd}"),
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

  Row _buildRow({
    String Name = "" ,
    String Value  = "",
   }) {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text(Value, style: TextStyle(fontSize: 17, color: anGrayText),),
                    new Text(Name, style: TextStyle(fontSize: 14 ,color: Colors.black45),),
                  ],
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


