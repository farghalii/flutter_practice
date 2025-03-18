import 'package:flutter/material.dart';
import 'package:tolu/components/category_items.dart';
import 'package:tolu/screens/numberspage.dart';

class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final String name = '/home page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff6B4226),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Category(
            ontap: () { 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }),
              );
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            color: Color(0xff458B00),
            text: 'Family Members',
          ),
          Category(
            color: Color(0xff79359F),
            text: 'Colors',
          ),
          Category(
            color: Color(0xff57B4BA),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
