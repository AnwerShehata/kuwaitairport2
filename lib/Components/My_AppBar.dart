import 'package:flutter/material.dart';
import '../ToolsApp/StyleApp.dart';
import '../ToolsApp/WidgetApp.dart';
import 'package:toast/toast.dart';

class My_AppBar extends StatefulWidget implements PreferredSizeWidget {

  final String title;
  My_AppBar({Key key , this.title}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  _My_AppBarState createState() => _My_AppBarState();
}






class _My_AppBarState extends State<My_AppBar>{

  //===== Function Button Design ========================================
  void Function_ButtonSearch(){
    Toast.show("Search ", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER ,backgroundColor: Colors.red);
  }

  //===== Function Button Design ========================================
  void Function_EditingComplete(){
    Toast.show("Search ", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER ,backgroundColor: Colors.red);
  }

  Widget appBarTitle = InkWell( onTap: (){ print("Home"); }, child: Text("بحث"));
  Icon actionIcon = new Icon(Icons.search);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:anRed,
      elevation: 0,
      centerTitle: true,
      title:appBarTitle,
      leading:IconButton(icon: actionIcon,onPressed:(){
        setState(() {
          if ( this.actionIcon.icon == Icons.search){
            this.actionIcon = new Icon(Icons.close);
            this.appBarTitle = new TextField(
              style: new TextStyle(color: Colors.white),
              decoration: new InputDecoration(
                prefixIcon: new Icon(Icons.search,color: Colors.white),
                hintText: widget.title,
                hintStyle: new TextStyle(color: Colors.white),
              ),
              textAlign: TextAlign.center,
              cursorColor: Colors.amber,
              textInputAction: TextInputAction.search,
              onEditingComplete: (){ Function_EditingComplete();},
            );
          }
          else {
            this.actionIcon = new Icon(Icons.search);
            this.appBarTitle = InkWell( onTap: (){ print("Home"); }, child: Image.asset("assets/images/logo.png"));
          }
        });
      } ,),
    );
  }
}