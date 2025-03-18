import 'package:flutter/material.dart';
import 'package:tolu/models/numbers.dart';

class TranslateNumbers extends StatelessWidget {
  final Numbers number;

  const TranslateNumbers({required this.number});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: Row(
        children: [
          Container(color: Color(0xffFEF6DB), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.enname,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.jpname,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
