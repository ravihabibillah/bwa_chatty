import 'package:flutter/material.dart';
import '../theme.dart';

class ImageCircle extends StatelessWidget {
  final double image_width;
  final double image_height;
  final String imageUrl;

  ImageCircle(
      {required this.image_width,
      required this.image_height,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: image_width,
      height: image_height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: Image.asset(imageUrl).image, fit: BoxFit.fill)),
    );
  }
}
