import 'package:flutter/material.dart';

class IconsActions extends StatelessWidget {
  IconData icon;
  IconsActions({required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
