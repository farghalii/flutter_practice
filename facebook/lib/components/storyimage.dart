import 'package:flutter/material.dart';

class Storyimage extends StatelessWidget {
  final String image;
  final String userimage;
  const Storyimage({
    required this.image,
    required this.userimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Stack(
        children: [
          Container(
            width: 120,
            height: 200,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(userimage),
            ),
          )
        ],
      ),
    );
  }
}
