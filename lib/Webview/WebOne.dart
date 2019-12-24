import 'dart:async';
import 'package:flutter/material.dart';
import '../Page/HomePage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../ToolsApp/StyleApp.dart';
import '../Components/NavigationBarHome.dart';



class WebOne extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<WebOne> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Cairo"),
      home:  new Scaffold(


        appBar: AppBar(
          title: Text("مطار الكويت الدولي"),
          backgroundColor: anRed,
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
          }),
        ),

        body: WebView(
          initialUrl: "https://www.dgca.gov.kw/ar/travellers/",
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
        ),
  


      ),
    );
  }
}