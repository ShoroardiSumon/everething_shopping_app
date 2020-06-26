import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/carousel/m1.jpeg'),
          AssetImage('assets/images/carousel/m2.jpg'),
          AssetImage('assets/images/carousel/m3.png'),
          AssetImage('assets/images/carousel/m4.jpg'),
          AssetImage('assets/images/carousel/m5.jpg'),
          AssetImage('assets/images/carousel/m6.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1500),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
        dotBgColor: Colors.transparent,
      ),
    );
  }
}