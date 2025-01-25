import 'package:flutter/material.dart';

class ImageMap extends StatelessWidget {
  const ImageMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "asset/image/image 5.png",
      fit: BoxFit.fill,
    );
  }
}
