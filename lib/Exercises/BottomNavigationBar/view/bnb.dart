import 'package:flutter/material.dart';

import 'favorite_page.dart';
import 'home_page.dart';

class BNBScreen extends StatefulWidget {
  @override
  State<BNBScreen> createState() => _BNBScreenState();
}

class _BNBScreenState extends State<BNBScreen> {
  int index = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan[100],
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
          pageController.animateToPage(value, duration: Duration(microseconds: 1), curve: Curves.linear);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
          children: [HomePage(), FavoritePage()]),
    );
  }
}
