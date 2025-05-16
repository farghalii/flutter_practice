import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback? ontap;
  const Category({required this.text, required this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
