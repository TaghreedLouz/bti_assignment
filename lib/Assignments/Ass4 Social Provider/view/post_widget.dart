import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/data/post_model.dart';
import 'package:bti_assignment/Assignments/Ass4%20Social%20Provider/providers/social_provider.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {

  PostModel postModel;
  PostWidget(this.postModel);
  String comment = "";
  TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Provider.of<SocialProvider>(context).isDark ? Colors.grey[700] : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      NetworkImage(postModel.user!.image ?? ""),
                  radius: 25,
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(postModel.user!.name ?? "",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.blue[300], size: 15),
                          Text(postModel.user!.location ?? "",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.blue[300])),
                        ],
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 100),
                //   child: Icon(Icons.more_vert),
                // ),
              ],
            ),
            SizedBox(height: 15),
            InkWell(
              onDoubleTap: () {
                Provider.of<SocialProvider>(context,listen: false).toggleIsLiked(postModel);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  postModel.image ?? "",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        color: Colors.black12,
                        size: 200,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Provider.of<SocialProvider>(context,listen: false).toggleIsLiked(postModel);
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: (postModel.isLiked ?? false) ? Colors.red : Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Text((postModel.comments?.length ?? 0).toString()),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.mode_comment_rounded,
                    color: Colors.blueAccent, size: 30),
                SizedBox(
                  width: 5,
                ),
                Text((postModel.comments?.length ?? 0).toString()),
              ],
            ),
            SizedBox(height: 10),
            Text(postModel.content ?? ""),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  comment = value;
                },
                controller: textEditingController,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          //Provider.of<SocialProvider>(context).addNewComment(comment);
                            // Comment newComment = Comment({
                            //   "user": {
                            //     "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJWwNyMppD7qiGkc28RpXtMipOE622_1RWaQ&usqp=CAU",
                            //     "name": "New Commenter",
                            //     "location": "Palestine",
                            //   },
                            //   "text": comment,
                            //   "isLiked": false,
                            // });
                           if(comment.isNotEmpty)
                             postModel.comments?.add(Provider.of<SocialProvider>(context,listen: false).addNewComment(comment));
                          //postModel.comments?.add(Provider.of<SocialProvider>(context,listen: false).addNewComment(textEditingController.text));
                           // widget.postModel.comments!.length++;
                           // comment="";
                          textEditingController.clear();

                        },
                        child: Icon(Icons.send)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),),
            ),
            SizedBox(height: 10),
            postModel.comments != null && postModel.comments!.isNotEmpty ? ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: postModel.comments!.length,
                    itemBuilder: (context, index) {
                      final comment = postModel.comments![index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Provider.of<SocialProvider>(context).isDark ? Colors.grey[400] : Colors.black12,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8,8,8,0),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                comment.user!.image ?? ""),
                                            radius: 15,
                                          ),
                                          SizedBox(width: 8),
                                          Text(comment.user!.name ?? "",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(47,0,47,10),
                                      child: Text(comment.text ?? "",
                                          style: TextStyle(
                                              color: Colors.blue.shade800)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                if (comment.isLiked ?? true)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.blueAccent,
                                      size: 18,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ) : Text("No comments yet :)",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.blue[300])),
          ],
        ),
      ),
    );
  }
}
