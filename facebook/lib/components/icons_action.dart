import 'package:flutter/material.dart';

class Icons_action extends StatelessWidget {
  final Icon icon;
  const Icons_action({required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: icon,
    );
  }
}
