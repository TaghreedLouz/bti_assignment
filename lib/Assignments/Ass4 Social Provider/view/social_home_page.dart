import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/liked_posts_screen.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/posts_screen.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SocialHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Social Media App with provider"), actions: [
        Switch(value: Provider.of<SocialProvider>(context).isDark, onChanged: (value) {
          Provider.of<SocialProvider>(context,listen: false).toggleIsDark();
        },),

      ],),
      body: PageView(children: [PostScreen(),LikedPostWidget()]),
    );
  }
}
