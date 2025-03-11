import 'package:flutter/material.dart';

class ImgContainer extends StatelessWidget {
  AssetImage image;
  ImgContainer({required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(minHeight: 200, maxWidth: 250),
        decoration: BoxDecoration(
          image: DecorationImage(image: image, fit: BoxFit.scaleDown),
          color: const Color(0xff168C4B),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ),
    );
  }
}
