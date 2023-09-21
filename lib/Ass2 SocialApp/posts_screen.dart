
import 'package:bti_assignment/Ass2%20SocialApp/post_data.dart';
import 'package:bti_assignment/Ass2%20SocialApp/post_model.dart';
import 'package:bti_assignment/Ass2%20SocialApp/post_widget.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  List<PostModel> convertMapsToPostmodel() {
    return postsData.map((e) => PostModel(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Social Media App")),
      body: ListView.builder(
        itemCount: postsData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: PostWidget(convertMapsToPostmodel()[index]),
          );
        },
      ),
    );
  }
}
