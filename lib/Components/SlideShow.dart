import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


Widget SlideShow_Home() {
  return SizedBox(
      height: 180,
      width: 300,
      child: Carousel(
        images: [
          NetworkImage('https://cdn.pixabay.com/photo/2017/12/11/11/30/helicopter-3011983__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2019/09/14/06/09/bee-4475324__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2019/03/22/09/50/lake-4072911__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2013/02/05/15/18/aircraft-78060__480.jpg'),
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
          NetworkImage('https://cdn.pixabay.com/photo/2017/12/11/11/30/helicopter-3011983__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2019/09/14/06/09/bee-4475324__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2019/03/22/09/50/lake-4072911__480.jpg'),
          NetworkImage('https://cdn.pixabay.com/photo/2013/02/05/15/18/aircraft-78060__480.jpg'),
        ],
      )
  );
}