import 'package:facebook/components/post_react_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset('assets/home_images/Ellipse 6.png'),
          title: Text(
            'Route',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
          ),
          subtitle: Row(
            children: [
              Text(
                '8h .',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Icon(Icons.public_outlined, size: 16, color: Colors.grey),
            ],
          ),
          trailing: Icon(Icons.more_horiz, size: 40),
        ),
        Image.asset('assets/home_images/Rectangle 10.png'),
        Row(
          children: [
            Post_Icons(icon: Icon(Icons.favorite_outline)),
            Post_Icons(icon: Icon(Icons.chat_outlined)),
            Post_Icons(icon: Icon(Icons.send_sharp)),
            Spacer(),
            Post_Icons(icon: Icon(Icons.bookmark_outline)),
          ],
        ),
      ],
    );
  }
}
