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


void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}


class _BirdState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

//      home: splashScreen(),
//      home: login(),
//      home: AddTransaction(),
//      home: Profile(),
//      home: Page_Notifications(),
//      home: Page_Sectors(),
//      home: Page_files(),
//      home: Page_NewTransaction(),
//      home: Page_MeetingMinutes(),
//      home: Page_DirectorGeneral(),
//      home: Page_PrentFile(),
//      home: Page_FollowDocument(),
      home: NavigationBarHome(),

    );
  }
}