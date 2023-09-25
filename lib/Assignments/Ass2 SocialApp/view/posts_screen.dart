import 'package:bti_assignment/Assignments/Ass2%20SocialApp/data/post_data.dart';
import 'package:bti_assignment/Assignments/Ass2%20SocialApp/view/post_widget.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postsModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: PostWidget(postsModelList[index]),
          );
        },
      );
  }
}
