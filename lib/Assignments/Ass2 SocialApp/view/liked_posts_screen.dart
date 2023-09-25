import 'package:bti_assignment/Assignments/Ass2%20SocialApp/data/post_data.dart';
import 'package:bti_assignment/Assignments/Ass2%20SocialApp/view/post_widget.dart';
import 'package:flutter/material.dart';

class LikedPostWidget extends StatefulWidget {


  @override
  State<LikedPostWidget> createState() => _LikedPostWidgetState();
}

class _LikedPostWidgetState extends State<LikedPostWidget> {
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView.builder(
          itemCount: postsModelList.where((element) => element.isLiked == true).length,
          itemBuilder: (context, index) {
            return PostWidget(postsModelList.where((element) => element.isLiked == true).toList()[index] ,  updateScreen);
        },),
      )
    ],);
  }
}














