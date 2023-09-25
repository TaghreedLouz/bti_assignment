import 'package:bti_assignment/Assignments/Ass2%20SocialApp/view/liked_posts_screen.dart';
import 'package:bti_assignment/Assignments/Ass2%20SocialApp/view/posts_screen.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/material.dart';

class SocialHomePage extends StatefulWidget {
  Function function;
  SocialHomePage(this.function);

  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Social Media App"), actions: [
        Switch(value: Utities.isDark, onChanged: (value) {
          Utities.isDark = !Utities.isDark;
          widget.function();
        },),

      ],),
      body: PageView(children: [PostScreen(),LikedPostWidget()]),
    );
  }
}
