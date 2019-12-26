import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


Widget SlideShow_Home() {
  return SizedBox(
      height: 180,
      width: 300,
      child: Carousel(
        images: [
          NetworkImage("https://www.kuwaitnews.com/images/stories/local/local/2018/10/kuwait.airport.281018.jpg"),
          NetworkImage("https://www.kuna.net.kw/NewsPictures/2017/11/1/a87a7521-88c4-4c13-8a68-f01b5d4dfdac.jpg"),
          NetworkImage("https://www.kuna.net.kw/NewsPictures/2018/1/14/6cb796dd-79dd-430f-8edb-b301d0ff4e65.jpeg"),
          NetworkImage("https://acakuw.com/wp-content/uploads/2019/04/img_4675-780x405.jpg"),
        ],
      )
  );
}


Widget SlideShow_Drawer() {
  return SizedBox(
      height: 160,
      child: Carousel(
        autoplay: true,
        dotSize: 4.0,
        dotSpacing: 15.0,
        indicatorBgPadding: 5.0,
        images: [
          NetworkImage("https://www.kuwaitnews.com/images/stories/local/local/2018/10/kuwait.airport.281018.jpg"),
          NetworkImage("https://www.kuna.net.kw/NewsPictures/2017/11/1/a87a7521-88c4-4c13-8a68-f01b5d4dfdac.jpg"),
          NetworkImage("https://www.kuna.net.kw/NewsPictures/2018/1/14/6cb796dd-79dd-430f-8edb-b301d0ff4e65.jpeg"),
          NetworkImage("https://acakuw.com/wp-content/uploads/2019/04/img_4675-780x405.jpg"),
        ],
      )
  );
}