import 'package:flutter/material.dart';
import 'package:whats_app/actions.dart';
import 'package:whats_app/img_container.dart';
import 'package:whats_app/model_container.dart';

void main() {
  runApp(WhatsApp(
    user_name: 'Hamza Farghali',
  ));
}

class WhatsApp extends StatelessWidget {
  final String user_name;
  const WhatsApp({required this.user_name});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          backgroundColor: Color(0xff168C4B),
          leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: IconsActions(
              icon: Icons.arrow_back_ios_new,
            ),
          ),
          title: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/hamza.jpg'),
                ),
              ),
              Text(
                user_name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            IconsActions(
              icon: Icons.call_outlined,
            ),
            IconsActions(
              icon: Icons.videocam_outlined,
            ),
            IconsActions(
              icon: Icons.more_vert,
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/iPhone 16 - 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18, left: 8, right: 8),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ModelContainer(
                      text: 'Hello!',
                      position: 'left',
                    ),
                    ModelContainer(
                      text: 'Hello!',
                      position: 'right',
                    ),
                    ModelContainer(
                      text:
                          'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                      position: "left",
                    ),
                    ImgContainer(
                      image: AssetImage(
                          'images/394207767_709508957870739_4789263993603935944_n 1.png'),
                    ),
                    ModelContainer(
                      text: 'what a Great Content To learn Flutter',
                      position: 'right',
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 330,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(0, 22, 140, 75),
                              border: Border.all(color: Color(0xff168C4B)),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                IconsActions(icon: Icons.photo_camera_outlined),
                                Text(
                                  "Type a Message ...",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Spacer(),
                                IconsActions(icon: Icons.send_rounded),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Color(0xff168C4B),
                              padding: EdgeInsets.all(10),
                            ),
                            child: Icon(
                              Icons.mic_outlined,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
