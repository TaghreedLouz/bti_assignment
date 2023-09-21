import 'package:bti_assignment/Exercises/comment_list/comment_screen.dart';
import 'package:flutter/material.dart';
import 'Ass1 place LV/place_data.dart';
import 'Ass1 place LV/place_model.dart';
import 'Ass2 SocialApp/posts_screen.dart';
import 'Exercises/OttuGrid/ottu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final placeModel = PlaceModel(place);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //  home: PlaceScreen(placeModel),
    //  home: PostScreen(),
     // home: CommentScreen(),
  //   home: OrderScreen(),
     home: OttuScreen(),
      //  home: exListView(placeModel),
    );
  }
}
