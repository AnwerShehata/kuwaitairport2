import 'package:flutter/material.dart';
import '../Page/HomePage.dart';
import '../ToolsApp/StyleApp.dart';
import '../Duplicate_Page/Dup_DirectorGeneral.dart';
import '../Duplicate_Page/Dup_General.dart';

class NavigationBarHome extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<NavigationBarHome> {
  int _pageIndex = 0;

  // هنا الصفحات التي سوف يتم التنقل بينهم عن طريق NavigationBar
  final Dup_DirectorGeneral _DirectorGeneral = new Dup_DirectorGeneral();
  final HomePage _home = new HomePage();
  final Dup_General _General = new Dup_General();

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