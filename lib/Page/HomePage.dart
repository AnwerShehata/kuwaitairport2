  import 'package:flutter/material.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:intl/intl.dart';

  import '../ToolsApp/StyleApp.dart';
  import '../ToolsApp/WidgetApp.dart';
  import '../Components/My_Drawer.dart';
  import './Page_Notifications.dart';
  import '../Components/SlideShow.dart';
  import '../Page/AddTransaction.dart';
  import '../Page/Page_Sectors.dart';
  import '../Page/Page_NewTransaction.dart';






  class HomePage extends StatefulWidget {
    _BirdState createState() => new _BirdState();
  }

  class _BirdState extends State<HomePage> {

    void _Notifications(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);
    }


    void _News(){
      print("News");
    }

    void _WebSite(){
      print("WebSite");
    }

    void _FunButton1(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => AddTransaction()),);
    }


    void _FunButton2(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Sectors()),);
    }

    String _number = "9" ;
    String imageUser = 'https://images.pexels.com/photos/2947929/pexels-photo-2947929.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500' ;


    List<BottomNavigationBarItem>  _items;
    String _value = '';
    int _index = 0;

    DateTime _dateTime = new DateTime.now();


    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    String imagUrl = "";

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
      String _formatteddate = new DateFormat.yMd().format(_dateTime);
      String _formatteddate2 = new DateFormat.jm().format(_dateTime);

      return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Cairo"),
        home:  new Scaffold(

          key: _scaffoldKey,
          endDrawer: new My_Drawer(),


          //Body ===============================================
          body:  Stack(
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


          // ============= هنا الــ Container بزر الاشعارات ور الدرور وبيانات المستخدم    ==================================
          new Container(
            height: 280,
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 60 ,left: 10 , right: 10),
                  child: Row(
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
                                child: new CircleAvatar(child: Text(_number), minRadius: 11,
                                  backgroundColor: Colors.black,))

                          ],),
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



                //--------------- بيانات المستخدم والوقت والتاريخ   ------------------------------
                Padding(
                  padding: const EdgeInsets.only(top: 20 , left: 10 , right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      //-------------------- التارخ الوقت ---------------
                      new Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.center,
                        children: <Widget>[
                          new Text(_formatteddate, style: TextStyle(fontSize: 15 ,color: anWhite),),
                          Positioned(
                              bottom: -18,
                              child: new Text(_formatteddate2 , style: TextStyle(fontSize: 15 ,color: anWhite),)),
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
                                new Text("انور شحاتة عبد الزاهر" , style: TextStyle(fontSize: 20 ,color: anWhite),),
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


              ],
            ),
          ),

          Column(
            children: <Widget>[
              SizedBox(height: 250),
              Container(
                height: 390,
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: anWhite,
                  borderRadius: BorderRadius.circular(10) ,
                  boxShadow: [new BoxShadow(color: Colors.black26, blurRadius: 4.0,),]
                ),



                // ============= هنا الــ Container زر المعاملات والقطاعات     ==================================
                child: Column(
                  children: <Widget>[

                    SizedBox(height: 20),
                    my_Button( onBtnclicked: (){ _FunButton1();} , textButton: "المعاملات " ,fontSize: 30,
                        horizontal: 30, heightButton: 60 , radiusButton: 5  , colorButton: anRed),

                    SizedBox(height: 20),
                    my_Button(onBtnclicked: (){_FunButton2();} , textButton: "القطاعات  " ,fontSize: 30,
                        horizontal: 30, heightButton: 60 , radiusButton: 5  , colorButton: anRed),

                    SizedBox(height: 20),

                    //===SlideShow_Home=========================================
                    SlideShow_Home(),

                  ],
                ),

              ),

            ],
          )

            ],
          ),





        ),
      );
    }

  }