import 'package:flutter/material.dart';

class ImageCirc extends StatelessWidget {
  final String imageadd;
  final double width;
  final double height;

  const ImageCirc({
    Key? key,
    required this.width,
    required this.height,
    required this.imageadd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: NetworkImage(imageadd), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
