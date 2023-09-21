class PostModel {
  String? image;
  String? content;
  User? user;
  bool? isLiked;
  List<Comment>? comments;

  PostModel(Map map) {
    image = map["image"];
    content = map["content"];
    user = User(map["user"]);
    isLiked = map["isFavourite"];
    List commenysMap = map["comments"];
    List<Map>? commentsLis = commenysMap.isEmpty?null:commenysMap as List<Map>;
    comments = commentsLis?.map((commentMap) => Comment(commentMap)).toList();
  }
}

class Comment {
  User? user;
  String? text;
  bool? isLiked;

  Comment(Map map) {
    user = User(map["user"]);
    text = map["text"];
    isLiked = map["isLiked"];
  }
}

class User {
  String? image;
  String? name;
  String? location;

  User(Map map) {
    image = map["image"];
    name = map["name"];
    location = map["location"];
  }
}
