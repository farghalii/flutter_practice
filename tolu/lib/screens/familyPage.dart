import 'package:flutter/material.dart';
import 'package:tolu/widgets/family_items.dart';
import 'package:tolu/widgets/numbers_items.dart';
import 'package:tolu/models/Info.dart';

class Familypage extends StatelessWidget {
  final List<Info> members = const [
    Info(
        image: 'assets/images/family_members/family_father.png',
        enname: 'father',
        jpname: 'chichioya',
        sound: 'sounds/family_members/father.wav'),
    Info(
        image: 'assets/images/family_members/family_daughter.png',
        enname: 'daughter',
        jpname: "musume",
        sound: 'sounds/family_members/daughter.wav'),
    Info(
        image: 'assets/images/family_members/family_grandfather.png',
        enname: 'grand father',
        jpname: "ojisan",
        sound: 'sounds/family_members/grand father.wav'),
    Info(
        image: 'assets/images/family_members/family_mother.png',
        enname: 'mother',
        jpname: "hahaoya",
        sound: 'sounds/family_members/mother.wav'),
    Info(
        image: 'assets/images/family_members/family_grandmother.png',
        enname: 'grand mother',
        jpname: "sobo",
        sound: 'sounds/family_members/grand mother.wav'),
    Info(
        image: 'assets/images/family_members/family_older_brother.png',
        enname: 'older brother',
        jpname: 'nisan',
        sound: 'sounds/family_members/older bother.wav'),
    Info(
        image: 'assets/images/family_members/family_older_sister.png',
        enname: 'older sister',
        jpname: 'ane',
        sound: 'sounds/family_members/older sister.wav'),
    Info(
        image: 'assets/images/family_members/family_son.png',
        enname: 'son',
        jpname: 'musuko',
        sound: 'sounds/family_members/son.wav'),
    Info(
        image: 'assets/images/family_members/family_younger_brother.png',
        enname: 'youngest brother',
        jpname: 'otōto',
        sound: 'sounds/family_members/younger brohter.wav'),
    Info(
        image: 'assets/images/family_members/family_younger_sister.png',
        enname: 'youngest sister',
        jpname: "imōto",
        sound: 'sounds/family_members/younger sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: 1000,
        child: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) => FamilyItems(
            number: members[index],
          ),
        ),
      ),
    );
  }
}
