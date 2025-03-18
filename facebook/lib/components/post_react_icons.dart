import 'package:flutter/material.dart';

class Post_Icons extends StatelessWidget {
  final Icon icon;
  const Post_Icons({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: icon,
    );
  }
}
