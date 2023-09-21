import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {


  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  List comments = [];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Comments App")),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network("https://images.unsplash.com/photo-1597982087634-9884f03198ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bG9zJTIwYW5nZWxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Icon(Icons.favorite,color: Colors.red,size: 30),
              SizedBox(width: 10,),
              Icon(Icons.mode_comment_rounded, color: Colors.blueAccent,size: 30),
              SizedBox(width: 5,),
              Text(comments.length.toString()),
            ],),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: comments.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(15,0,15,8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38),
                      child: Text(comments[index] ?? "",style: TextStyle(color: Colors.blue.shade800)),
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
              suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      comments.add(controller.text);
                      controller.clear();
                    });
                  },
                  child: Icon(Icons.send)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ),),
          )
        ]),
      ),
    );
  }
}
