import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Assignments/Ass1 place LV/data/place_data.dart';
import 'Assignments/Ass1 place LV/data/place_model.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Exercises/Social App Seelector/view/social_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ChangeNotifierProvider<SocialProvider>(
      create: (context) {
        return SocialProvider();
      },
      child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations', // <-- change the path of the translation files
          fallbackLocale: Locale('en'),
          child: MyApp())));
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
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
