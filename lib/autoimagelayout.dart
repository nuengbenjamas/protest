import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/carouseCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoImageLayout extends StatelessWidget {
  List<String> carouselImageItems = [
    'images/6.png',
    'images/7.png',
    'images/8.png',
  ];

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
      items: carouselImageItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselCard(
              imageURl: item,
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        
        // height: 500,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 100),
        autoPlayCurve: Curves.fastOutSlowIn,
         
      ),
    );
  }
}
