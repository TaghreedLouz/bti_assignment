import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/data/post_data.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/data/post_model.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/cupertino.dart';

class SocialProvider extends ChangeNotifier{
  List<PostModel> postsModelList = postsData.map((e) => PostModel(e)).toList();
  bool isDark = false;

  toggleIsLiked(PostModel postModel){
    postModel.isLiked = ! postModel.isLiked!;
    notifyListeners();
  }
  toggleIsDark(){
    isDark = ! isDark;
    notifyListeners();
  }
}