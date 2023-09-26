import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/view/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Assignments/Ass4 Social Provider/data/post_model.dart';
import '../data/post_data.dart';


class PostScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Selector<SocialProvider,List<PostModel>>(
      selector: (context, provider) {
        return provider.postsModelList;
      },
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: PostWidget(value[index])
            );
          },
        );
      },
    );
  }
}
