import 'package:facebook/components/create_story.dart';
import 'package:facebook/components/icons_action.dart';

import 'package:facebook/components/post_react_icons.dart';
import 'package:facebook/components/storyimage.dart';
import 'package:facebook/home_page/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/home_images/Facebook.png',
            width: 130,
          ),
          actions: [
            Icons_action(icon: Icon(Icons.add_circle)),
            Icons_action(icon: Icon(Icons.search)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/home_images/Messenger.png',
                width: 20,
                height: 20,
              ),
            ),
          ],
          bottom: TabBar(
            dividerHeight: 2,
            dividerColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.blue,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.tv_rounded,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.store_rounded,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_circle_rounded,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
              Tab(
                child: Image.asset('assets/home_images/Ellipse 2.png'),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading:
                            Image.asset('assets/home_images/Ellipse 2.png'),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: "What's in your mind?",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            border: InputBorder.none,
                          ),
                        ),
                        trailing:
                            Icon(Icons.photo_library, color: Colors.green),
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.grey),
                    Container(
                      height: 220,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CreateStory(
                            userimage:
                                'assets/home_images/wallpaperflare.com_wallpaper.png',
                          ),
                          Storyimage(
                            userimage: 'assets/home_images/goat.png',
                            image: 'assets/home_images/Rectangle 7.png',
                          ),
                          Storyimage(
                            userimage: 'assets/home_images/messi3.png',
                            image: 'assets/home_images/Rectangle 8.png',
                          ),
                          Storyimage(
                            userimage: 'assets/home_images/goat.png',
                            image: 'assets/home_images/Rectangle 7.png',
                          ),
                          Storyimage(
                            userimage: 'assets/home_images/messi3.png',
                            image: 'assets/home_images/Rectangle 8.png',
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.grey),
                    Post(),
                    Divider(color: Colors.grey, thickness: 2),
                    Post(),
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
