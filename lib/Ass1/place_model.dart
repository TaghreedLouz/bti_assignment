class PlaceModel{
  String? image;
  String? name;
  String? description;
  List? pictures;

  PlaceModel(Map map) {
    image = map["image"];
    name = map["name"];
    description = map["description"];
    pictures = map["pictures"];
  }
}

























