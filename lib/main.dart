import 'package:flutter/material.dart';
import 'Assignments/Ass1 place LV/place_data.dart';
import 'Assignments/Ass1 place LV/place_model.dart';
import 'Assignments/Ass2 SocialApp/posts_screen.dart';
import 'Assignments/Ass3 PizzaOrder/order_screen.dart';
import 'Exercises/BottomNavigationBar/bnb.dart';
import 'Exercises/Comment List/comment_screen.dart';
import 'Exercises/Comment List/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  updateScreen(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final placeModel = PlaceModel(place);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Utities.isDark ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //  home: PlaceScreen(placeModel),
     // home: PostScreen(),
   //   home: CommentScreen(updateScreen),
    //  home: MainPage(),
     home: OrderScreen(),
    // home: OttuScreen(),
    // home: BNBScreen(),
      //  home: exListView(placeModel),
    );
  }
}

class Utities{
  static bool isDark = false;
}