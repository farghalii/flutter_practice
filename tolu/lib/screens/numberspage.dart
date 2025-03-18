import 'package:flutter/material.dart';
import 'package:tolu/components/numbers_items.dart';
import 'package:tolu/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  final List<Numbers> numbers = const [
    Numbers(
        image: 'assets/images/numbers/number_one.png',
        enname: 'One',
        jpname: 'Ichi'),
    Numbers(
        image: 'assets/images/numbers/number_two.png',
        enname: 'Two',
        jpname: "Ni"),
    Numbers(
        image: 'assets/images/numbers/number_three.png',
        enname: 'Three',
        jpname: "San"),
    Numbers(
        image: 'assets/images/numbers/number_four.png',
        enname: 'Four',
        jpname: "Shi"),
    Numbers(
        image: 'assets/images/numbers/number_five.png',
        enname: 'Five',
        jpname: "Go"),
    Numbers(
        image: 'assets/images/numbers/number_six.png',
        enname: 'Six',
        jpname: 'Roku'),
    Numbers(
        image: 'assets/images/numbers/number_seven.png',
        enname: 'Seven',
        jpname: 'Sebun'),
    Numbers(
        image: 'assets/images/numbers/number_eight.png',
        enname: 'Eight',
        jpname: 'Hachi'),
    Numbers(
        image: 'assets/images/numbers/number_nine.png',
        enname: 'Nine',
        jpname: 'Kyuu'),
    Numbers(
        image: 'assets/images/numbers/number_ten.png',
        enname: 'Ten',
        jpname: "Ju"),
  ];
  final Numbers one = Numbers(
      image: 'assets/images/numbers/number_three.png',
      enname: 'three',
      jpname: 'dssdsd');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Color(0xff6B4226),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: 1000,
        child: ListView(
          children: [
            TranslateNumbers(
              number: numbers[0],
            ),
            TranslateNumbers(
              number: numbers[1],
            ),
            TranslateNumbers(
              number: numbers[2],
            ),
            TranslateNumbers(
              number: numbers[3],
            ),
            TranslateNumbers(
              number: numbers[4],
            ),
            TranslateNumbers(
              number: numbers[5],
            ),
            TranslateNumbers(
              number: numbers[6],
            ),
            TranslateNumbers(
              number: numbers[7],
            ),
            TranslateNumbers(
              number: numbers[8],
            ),
            TranslateNumbers(
              number: numbers[9],
            ),
          ],
        ),
      ),
    );
  }
}
