import 'package:flutter/material.dart';
import 'package:kuwaitairport/Page/Page_DirectorGeneral.dart';
import 'package:kuwaitairport/Page/Page_General.dart';
import '../Page/HomePage.dart';
import '../ToolsApp/StyleApp.dart';

class NavigationBarHome extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<NavigationBarHome> {
  int _pageIndex = 0;

  // هنا الصفحات التي سوف يتم التنقل بينهم عن طريق NavigationBar
  final Page_DirectorGeneral _DirectorGeneral = new Page_DirectorGeneral();
  final HomePage _home = new HomePage();
  final Page_General _General = new Page_General();

  Widget _showpage = new HomePage();
  Widget _pageChooser(int page){
    switch(page){

      // الجهات المعنية
      case 0 : return _DirectorGeneral ;
      break;

      // المدير العام
      case 1 : return _General ;
      break;

      // الصفحة الرئيسية
      case 2 : return _home ;
      break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(

        //====bottomNavigationBar===============================================
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), title: Text('الجهات المعنية')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('المدير العام')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('الرئيسية')),
          ],
          type: BottomNavigationBarType.fixed,      // لاظهار باقي العناصر التي تم اختفائها
          currentIndex: _pageIndex,
          elevation: 6,
          backgroundColor: anWhite,
          onTap: (int tappedIndex){
            setState(() {
              _showpage = _pageChooser(tappedIndex);
            });
          },
        ),

        body: Container(
          child: Center(
            child: _showpage,
          ),
        ),

      ),
    );
  }
}