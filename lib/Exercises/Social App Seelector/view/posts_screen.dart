import 'package:bti_assignment/Exercises/Social%20App%20Seelector/providers/social_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/view/post_widget.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/data/post_model.dart';

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Selector<SocialProvider, List<PostModel>>(
      selector: (context, socialProvider) => socialProvider.postsModelList,
      builder: (context, postsModelList, child) {
        return ListView.builder(
          itemCount: postsModelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: PostWidget(postsModelList[index]),
            );
          },
        );
      },
    );
  }
}

