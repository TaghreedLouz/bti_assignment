import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/data/post_model.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/liked_posts_screen.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/posts_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        final bool isDark = data.isDark;
        final Function toggleIsDark = data.toggleIsDark;
        final List<PostModel> postsModelList = data.postsModelList;

        return Scaffold(
          appBar: AppBar(
            title: Text("app_name".tr()),
            actions: [
              Switch(
                value: isDark,
                onChanged: (value) {
                  toggleIsDark();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: isDark ? Colors.grey[800] : Colors.blue,),
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
  Function? addNewComment;
  List<PostModel> postsModelList;

  SocialProviderData.all(this.isDark, this.toggleIsDark, this.postsModelList, this.toggleIsLiked, this.addNewComment);
  SocialProviderData.without(this.isDark, this.toggleIsDark, this.postsModelList);
}
