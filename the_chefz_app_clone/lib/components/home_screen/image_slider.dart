import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'lib/assets/images/slider/image1.jpg',
  'lib/assets/images/slider/image2.jpg',
  'lib/assets/images/slider/image3.jpg'
];

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(height: 120, autoPlay: true),
      items: imgList
          .map((item) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Center(
                    child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                )),
              ))
          .toList(),
    ));
  }
}
