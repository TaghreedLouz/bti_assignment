import 'package:bti_assignment/Exercises/Social%20App%20Seelector/providers/social_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/view/posts_screen.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/view/liked_posts_screen.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/data/post_model.dart';


class SocialHomePage extends StatefulWidget {

  @override
  State<SocialHomePage> createState() => _SocialHomePageState();
}

class _SocialHomePageState extends State<SocialHomePage> {
  PageController pageController = PageController();
  int index = 0;
  PostModel? postModel;

  @override
  Widget build(BuildContext context) {
    return Selector<SocialProvider, SocialProviderData>(
      selector: (context, provider){
        return SocialProviderData.without(provider.isDark, provider.toggleIsDark, provider.postsModelList);},
      builder: (context, data, child) {

        return Scaffold(
          appBar: AppBar(
            title: Text("app_name".tr()),
            actions: [
              Switch(
                value: data.isDark,
                onChanged: (value) {
                  data.toggleIsDark();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: data.isDark ? Colors.grey[800] : Colors.blue,elevation: 0),

                  onPressed: () {
                  Locale local = context.locale;
                  bool isArabic = local == Locale("ar");

                  if (isArabic) {
                    context.setLocale(Locale("en"));
                  } else {
                    context.setLocale(Locale("ar"));
                  }
                },
                child: Text("change_language".tr()),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
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
            children: [PostScreen(), LikedPostWidget()],
          ),
        );
      },
    );

  }
}

class SocialProviderData {
  bool isDark;
  Function toggleIsDark;
  Function? toggleIsLiked;
  Comment? addNewComment;
  List<PostModel> postsModelList;

  SocialProviderData.all(this.isDark, this.toggleIsDark, this.postsModelList, this.toggleIsLiked, this.addNewComment);
  SocialProviderData.without(this.isDark, this.toggleIsDark, this.postsModelList);
}
