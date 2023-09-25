import 'package:bti_assignment/Assignments/Ass2%20SocialApp/data/post_model.dart';
import 'package:bti_assignment/main.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {

  PostModel postModel;
  Function? function;
  PostWidget(this.postModel,[this.function]);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}


class _PostWidgetState extends State<PostWidget> {
//  TextEditingController controller = TextEditingController();
  String comment = "";

  toggleIsLike() {
    setState(() {});
    widget.postModel.isLiked = !(widget.postModel.isLiked ?? false);
    if (widget.function != null) {
      widget.function!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Utities.isDark ? Colors.grey[700] : Colors.grey[300],
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
                      NetworkImage(widget.postModel.user!.image ?? ""),
                  radius: 25,
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.postModel.user!.name ?? "",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.blue[300], size: 15),
                          Text(widget.postModel.user!.location ?? "",
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
                toggleIsLike();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.postModel.image ?? "",
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
                    toggleIsLike();
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: (widget.postModel.isLiked ?? false) ? Colors.red : Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                Text((widget.postModel.comments?.length ?? 0).toString()),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.mode_comment_rounded,
                    color: Colors.blueAccent, size: 30),
                SizedBox(
                  width: 5,
                ),
                Text((widget.postModel.comments?.length ?? 0).toString()),
              ],
            ),
            SizedBox(height: 10),
            Text(widget.postModel.content ?? ""),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  comment = value;
                },
               // controller: controller,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            //todo add to comments list
                            Comment newComment = Comment({
                              "user": {
                                "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJWwNyMppD7qiGkc28RpXtMipOE622_1RWaQ&usqp=CAU",
                                "name": "New Commenter",
                                "location": "Palestine",
                              },
                              "text": comment,
                              "isLiked": false,
                            });
                            if(comment.isNotEmpty)
                            widget.postModel.comments?.add(newComment);
                           // widget.postModel.comments!.length++;
                          //  comment="";
                            //controller.clear();
                          });
                        },
                        child: Icon(Icons.send)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),),
            ),
            SizedBox(height: 10),
            widget.postModel.comments != null && widget.postModel.comments!.isNotEmpty ? ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.postModel.comments!.length,
                    itemBuilder: (context, index) {
                      final comment = widget.postModel.comments![index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Utities.isDark ? Colors.grey[400] : Colors.black12,
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
                                      padding: const EdgeInsets.all(8.0),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 38),
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
