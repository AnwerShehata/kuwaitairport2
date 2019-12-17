  import 'package:flutter/material.dart';
  import 'package:flutter/material.dart';
  import '../ToolsApp/StyleApp.dart';
  import '../ToolsApp/WidgetApp.dart';
  import './my_BottomNavigation.dart';
  import './Page_Notifications.dart';


  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:carousel_pro/carousel_pro.dart';
//  import 'package:intl/intl.dart';
//  import 'package:intl/date_symbol_data_local.dart';
//  import 'package:intl/date_symbol_data_file.dart';
//  import 'package:intl/date_symbol_data_http_request.dart';




  class HomePage extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<HomePage> {

    void _Notifications(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
    }

    void _Drwer(){
      print("Drwer");
    }

    void _News(){
      print("News");
    }

    void _WebSite(){
      print("WebSite");
    }

    String imageUser = 'https://images.pexels.com/photos/2947929/pexels-photo-2947929.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500' ;


    List<BottomNavigationBarItem>  _items;
    String _value = '';
    int _index = 0;

//    var anData =  new DateFormat.yMd();
//    var anData1 =  new DateFormat("yMd");
//    var anData2 =  new DateFormat.jm();
//    var anData3 =  DateFormat.yMd().add_jm();
//    var anData4 =  DateFormat.Hm();

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

//          //====bottomNavigationBar===============================================
//          bottomNavigationBar: BottomNavigationBar(
//            items: _items,
//            type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
//            currentIndex: _index,
//            fixedColor: Colors.blue,
//            onTap: (int item){
//              setState(() {
//                _index = item;
//                _value = "${_index.toString()}";
//                switch(item){
//                //عند الضغط علي العنصر الاول  الذي يحمل رقم 0 سوف يتم تنفيذ الكود التالي
//                  case 0:{setState(() { _value = "Anwar"; });}
//                  break;
//
//                //عند الضغط علي العنصر الاول  الذي يحمل رقم 1 سوف يتم تنفيذ الكود التالي
//                  case 1:{setState(() { _value = "shehata"; });}
//                  break;
//
//                //عند الضغط علي العنصر الاول  الذي يحمل رقم 2 سوف يتم تنفيذ الكود التالي
//                  case 2:{setState(() { _value = "Ali"; });}
//                  break;
//                }
//              });
//            },
//          ),

        //====body===============================================


          body: Container(
            child: Column(
              children: <Widget>[

                new Stack(overflow: Overflow.visible,
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

                          //---------- الاشعارات ---------------------------
                          InkWell(onTap: _Notifications,
                            child: new Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[

                                new CircleAvatar(
                                  backgroundColor: anWhite, minRadius: 30,
                                  child: Icon(Icons.notifications_active ,color: anRed, size: 30,),
                                ),

                                Positioned(
                                    left: 40,
                                    bottom: -5,
                                    child: new CircleAvatar(child: Text("9"), minRadius: 11,
                                      backgroundColor: Colors.black,))

                              ],),
                          ),

                          new IconButton(icon: Icon(Icons.menu  ,color: anWhite, size: 30,), onPressed: _Drwer),

                        ],
                      ),
                    ),


                  //--------------- بيانات المستخدم والتاريخ والوقت   ------------------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 130 ,left: 20 , right: 20),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[


                        //-------------------- التارخ الوقت ---------------
                        new Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.center,
                          children: <Widget>[
                            new Text("", style: TextStyle(fontSize: 15 ,color: anWhite),),
                            Positioned(
                                bottom: -18,
                                child: new Text("9:23:55 PM" , style: TextStyle(fontSize: 15 ,color: anWhite),)),
                          ],
                        ),


                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            //-------------------- بيانات المستخدم الاسم والوظيفة   ---------------
                            Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Stack(
                              overflow: Overflow.visible,
                              alignment: Alignment.bottomRight,
                              children: <Widget>[
                                new Text("انور شحاتة " , style: TextStyle(fontSize: 20 ,color: anWhite),),
                                Positioned(
                                bottom: -16,
                                child: new Text("الرقم الوظيفي" , style: TextStyle(fontSize: 15 ,color: anWhite),)),
                              ],
                            ),
                          ),

                          //-------------------- صورة المستخدم  ---------------
                          my_ImageCircleAccount(imagURL: imageUser ,width: 70 , borderColor: anWhite ,borderWidth: 2),

                        ],),


                      ],
                    ),
                  ),

                    Positioned(
                      top: 250,  right: 30,   left: 30,
                      child: new Container(
                        height: 400,
                        decoration: BoxDecoration(
                           color: anWhite,
                          borderRadius: BorderRadius.circular(10) ,
                            boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 4.0,),]
                        ),


                        child: Column(
                          children: <Widget>[

                            SizedBox(height: 20),
                            my_Button( onBtnclicked: (){  print(" المعاملات");} , textButton: "المعاملات " ,fontSize: 30,
                            horizontal: 30, heightButton: 60 , radiusButton: 5  , colorButton: anRed),

                            SizedBox(height: 20),
                            my_Button(onBtnclicked: (){print("القطاعات");} , textButton: "القطاعات  " ,fontSize: 30,
                            horizontal: 30, heightButton: 60 , radiusButton: 5  , colorButton: anRed),

                            SizedBox(height: 20),
                            SizedBox(
                                height: 200,
                                width: 300,
                                child: Carousel(
                                  images: [
                                    NetworkImage('https://cdn.pixabay.com/photo/2017/12/11/11/30/helicopter-3011983__480.jpg'),
                                    NetworkImage('https://cdn.pixabay.com/photo/2019/09/14/06/09/bee-4475324__480.jpg'),
                                    NetworkImage('https://cdn.pixabay.com/photo/2019/03/22/09/50/lake-4072911__480.jpg'),
                                    NetworkImage('https://cdn.pixabay.com/photo/2013/02/05/15/18/aircraft-78060__480.jpg'),
                                  ],
                                )
                            ),

                          ],
                        ),

                      ),
                    ),







                  ],),


                SizedBox(height: 370),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    new Column(
                      children: <Widget>[
                        my_IconInContainer(
                            onTap: (){_WebSite();},color2: anWhite , heightWidth: 60 ,
                            widget: Icon(FontAwesomeIcons.globeAsia ,color: anGrayText,size: 28) ),
                            new Text(" موقع الطيران المدني  " , style: TextStyle(color: anGrayText),),
                              ],
                    ),


                    new Column(
                      children: <Widget>[
                        my_IconInContainer(
                            onTap: (){_News();},color2: anWhite , heightWidth: 60,
                            widget: Icon(FontAwesomeIcons.fileAlt ,color: anGrayText, size: 28,)),
                             new Text(" اخبار الطيران المدني  " , style: TextStyle(color: anGrayText),),
                      ],
                    )

                  ],
                ),




              ],
            ),
          ),

        ),
      );
    }
  }