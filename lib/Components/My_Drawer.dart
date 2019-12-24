import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import '../Components/SlideShow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Page/HomePage.dart';
import '../Page/splashScreen.dart';
import '../Page/login.dart';
import '../Page/AddTransaction.dart';
import '../Page/Profile.dart';
import '../Page/Page_Notifications.dart';
import '../Page/Page_Sectors.dart';
import '../Page/Page_files.dart';
import '../Page/Page_NewTransaction.dart';
import '../Page/Page_MeetingMinutes.dart';
import '../Page/Page_DirectorGeneral.dart';
import '../Page/Page_PrentFile.dart';
import '../Page/Page_FollowDocument.dart';
import '../Components/NavigationBarHome.dart';
import '../Page/HomePage.dart';
import '../Page/Page_Search.dart';
import '../Webview/WebOne.dart';
import '../Webview/WebTow.dart';


class My_Drawer extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Drawer> {

  String imageUser = 'https://images.pexels.com/photos/2947929/pexels-photo-2947929.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500' ;
  double fontSize = 16 ;
  double iconSize = 23 ;

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: Directionality(textDirection: TextDirection.rtl,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[


            new Container(
              padding: EdgeInsets.only(right: 10),
              height: 180,
              color: anRed,
              child: Row(
                children: <Widget>[
                  //-------------------- صورة المستخدم  ---------------
                  my_ImageCircleAccount(imagURL: imageUser ,width: 70 , borderColor: anWhite ,borderWidth: 1),
                  //-------------------- بيانات المستخدم الاسم والوظيفة   ---------------
                  Padding(
                    padding: const EdgeInsets.only(right: 10 ),
                    child: new Stack(
                      overflow: Overflow.visible,
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        new Text("انور شحاتة عبد الزاهر " , style: TextStyle(fontSize: 20 ,color: anWhite),),
                        Positioned(
                            bottom: -22,
                            child: new Text("الرقم الوظيفي : 8768" , style: TextStyle(fontSize: 15 ,color: anWhite),)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              title: Text('  موقع الطيران المدني ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(FontAwesomeIcons.globeAsia ,color: anGrayText, size: 28),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => WebOne()));},
            ),

            ListTile(
              title: Text('  اخبارنا ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading:  Icon(FontAwesomeIcons.fileAlt ,color: anGrayText, size: 28),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => WebTow()));},
            ),


            //===SlideShow_Home=========================================
            SlideShow_Drawer(),


            ListTile(
              title: Text('  اللغة ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Icon(Icons.language ,size: 35, color: anGray,),
              onTap: () {},
            ),


            ListTile(
              title: Text('  الخط الساخن ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Image.asset("asset/Imag/icon5.png" ,width: iconSize,),
              onTap: () {},
            ),


            ListTile(
              title: Text('  معاملاتي ' ,style: TextStyle(fontSize: fontSize ,color: anGrayText)),
              leading: Image.asset("asset/Imag/icon4.png" ,width: iconSize,),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddTransaction()),);},
            ),


            ListTile(
              title: Text('  اضافة معاملة ' ,style: TextStyle(fontSize: fontSize,color: anGrayText)),
              leading: Image.asset("asset/Imag/icon1.png" ,width: iconSize,),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Page_NewTransaction()),);},
            ),


            ListTile(
              title: Text(' محضر اجتماع ' ,style: TextStyle(fontSize: fontSize,color: anGrayText)),
              leading: Image.asset("asset/Imag/icon1.png" ,width: iconSize,),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Page_MeetingMinutes()),);},
            ),


            ListTile(
              title: Text('  الاشعارات ' ,style: TextStyle(fontSize: fontSize,color: anGrayText)),
              leading: Image.asset("asset/Imag/icon2.png" ,width: iconSize,),
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Page_Notifications()),);},
            ),


            ListTile(
              title: Text('  تسجيل خروج ' ,style: TextStyle(fontSize: fontSize),),
              leading: Image.asset("asset/Imag/icon3.png" ,width: iconSize,),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()),);},
            ),


          ],
        ),
      ),
    );
  }
}