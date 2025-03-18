import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  final String userimage;
  const CreateStory({required this.userimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 200,
            child: Column(
              children: [
                Image.asset(
                  userimage,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Create a \n Story',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: SizedBox(
              height: 35,
              width: 35,
              child: IconButton(
                iconSize: 20,
                style: IconButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 3),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
