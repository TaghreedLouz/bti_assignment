import 'package:bti_assignment/Exercises/Social%20App%20Seelector/providers/social_provider.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/view/post_widget.dart';
import 'package:bti_assignment/Exercises/Social%20App%20Seelector/data/post_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LikedPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Selector<SocialProvider,List<PostModel>>(
        selector: (context, provider) {
          return provider.postsModelList;
        },
        builder: (context, value, child) {
      return ListView.builder(
        itemCount: value
            .where((element) => element.isLiked == true)
            .length,
        itemBuilder: (context, index) {
          return PostWidget(value
              .where((element) => element.isLiked == true)
              .toList()[index]);
        },
      );
    });
  }
}

//
//
// class LikedPostWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Selector<SocialProvider, List<PostModel>>(
//       selector: (context, socialProvider) {
//         // Use a selector to filter and select only liked posts
//         return socialProvider.postsModelList
//             .where((element) => element.isLiked == true)
//             .toList();
//       },
//       builder: (context, likedPosts, child) {
//         return ListView.builder(
//           itemCount: likedPosts.length,
//           itemBuilder: (context, index) {
//             return PostWidget(likedPosts[index]);
//           },
//         );
//       },
//     );
//   }
// }

