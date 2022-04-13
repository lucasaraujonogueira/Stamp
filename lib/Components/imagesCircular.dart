import 'package:flutter/material.dart';

class ImageCirc extends StatelessWidget {
  final Image image;
  final double width;
  final double height;

  const ImageCirc({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: circleImage(),
    );
  }
}

circleImage() {
  return Center(
    child: new Container(
      width: 190.0,
      height: 190.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "http://www.macoratti.net/Imagens/pessoas/mac.jpg"))),
    ),
  );
}
