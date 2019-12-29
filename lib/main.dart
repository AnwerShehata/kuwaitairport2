import 'package:flutter/material.dart';
import './Page/HomePage.dart';
import './Page/splashScreen.dart';
import './Page/login.dart';
import './Page/AddTransaction.dart';
import './Page/Profile.dart';
import './Page/Page_Notifications.dart';
import './Page/Page_Sectors.dart';
import './Page/Page_files.dart';
import './Page/Page_NewTransaction.dart';
import './Page/Page_MeetingMinutes.dart';
import './Page/Page_DirectorGeneral.dart';
import './Page/Page_PrentFile.dart';
import './Page/Page_FollowDocument.dart';
import './Components/NavigationBarHome.dart';
import './Page/HomePage.dart';
import './Page/Page_Search.dart';
import './Webview/WebOne.dart';
import './Webview/WebTow.dart';
import './Page/Page_General.dart';
import 'dart:async';



void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}


class _BirdState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home: splashScreen(),

//      home: login(),

      //------------ صفحة المعاملات  ---------
//      home: AddTransaction(),

      //------------ صفحة البروفايل الشخصي  ---------
//      home: Profile(),

      //------------ صفحة الاشعارات   ---------
//      home: Page_Notifications(),

      //------------ صفحة القطاعات  ---------
//      home: Page_Sectors(),

      //------------ صفحة المعاملات الماضية  ---------
//      home: Page_files(),

      //------------ صفحة اضافة معاملة ---------
//      home: Page_NewTransaction(),

      //------------ صفحة محاضر اجتماع  ---------
//      home: Page_MeetingMinutes(),

      //------------ صفحة الجهات المعنية ---------
//      home: Page_DirectorGeneral(),

      //------------ صفحة المدير العام  ---------
//      home: Page_General(),

      //------------ صفحة بيانات المعاملة ---------
//      home: Page_PrentFile(),

      //------------ صفحة بيانات المعاملة ---------
//      home: Page_FollowDocument(),

      //------------ صفحة البحث  ---------
//      home: Page_Search(),

      //------------ صفحة الرئيسية ---------
//      home: HomePage(),


    );
  }
}