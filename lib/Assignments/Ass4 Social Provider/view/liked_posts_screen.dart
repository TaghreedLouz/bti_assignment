import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/data/post_data.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LikedPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SocialProvider>(builder: (context, value, child) {
      return ListView.builder(
        itemCount: value.postsModelList
            .where((element) => element.isLiked == true)
            .length,
        itemBuilder: (context, index) {
          return PostWidget(value.postsModelList
              .where((element) => element.isLiked == true)
              .toList()[index]);
        },
      );
    });
  }
}
