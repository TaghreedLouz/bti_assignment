import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Assignments/Ass1 place LV/data/place_data.dart';
import 'Assignments/Ass1 place LV/data/place_model.dart';
import 'Assignments/Ass4 Social Provider/view/social_home_page.dart';

void main() {
  runApp(ChangeNotifierProvider<SocialProvider>(
      create: (context) {
        return SocialProvider();
      },
      child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final placeModel = PlaceModel(place);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<SocialProvider>(context).isDark ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //  home: PlaceScreen(placeModel),
      //   home: CommentScreen(updateScreen),
      //  home: SocialHomePage(updateScreen),
      home: SocialHomePage(),
      //  home: exListView(placeModel),
    );
  }
}

class Utities {
  static bool isDark = false;
}
