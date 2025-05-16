import 'package:flutter/material.dart';
import 'package:tolu/widgets/numbers_items.dart';
import 'package:tolu/models/Info.dart';

class NumbersPage extends StatelessWidget {
  final List<Info> numbers = [
    Info(
        image: 'assets/images/numbers/number_one.png',
        enname: 'One',
        jpname: 'Ichi',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_two.png',
        enname: 'Two',
        jpname: "Ni",
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_three.png',
        enname: 'Three',
        jpname: "San",
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_four.png',
        enname: 'Four',
        jpname: "Shi",
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_five.png',
        enname: 'Five',
        jpname: "Go",
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_six.png',
        enname: 'Six',
        jpname: 'Roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_seven.png',
        enname: 'Seven',
        jpname: 'Sebun',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_eight.png',
        enname: 'Eight',
        jpname: 'Hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_nine.png',
        enname: 'Nine',
        jpname: 'Kyuu',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Info(
        image: 'assets/images/numbers/number_ten.png',
        enname: 'Ten',
        jpname: "Ju",
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
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
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) => TranslateNumbers(
            number: numbers[index],
          ),
        ),
      ),
    );
  }
}
