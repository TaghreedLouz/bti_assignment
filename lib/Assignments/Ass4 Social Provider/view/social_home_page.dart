import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/liked_posts_screen.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/posts_screen.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SocialHomePage extends StatefulWidget {
  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Media App with provider"),
        actions: [
          Switch(
            value: Provider.of<SocialProvider>(context).isDark,
            onChanged: (value) {
              Provider.of<SocialProvider>(context, listen: false)
                  .toggleIsDark();
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.cyan[100],
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
          pageController.animateToPage(value, duration: Duration(microseconds: 1), curve: Curves.linear);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
      body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [PostScreen(), LikedPostWidget()]),
    );
  }
}
