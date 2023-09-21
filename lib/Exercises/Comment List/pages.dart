import 'package:flutter/material.dart';

import 'comment_screen.dart';
import 'liked_page.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  updateScreen(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
         // physics: NeverScrollableScrollPhysics(),
         // controller: pageController,
          children: [CommentScreen(updateScreen), LikedScreed()]),
    );
  }
}
