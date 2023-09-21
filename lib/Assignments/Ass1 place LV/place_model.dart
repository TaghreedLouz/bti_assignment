class PlaceModel{
  int? id;
  String? image;
  String? city;
  String? description;
  List? pictures;
  String? country;

  PlaceModel(Map map) {
    id = map["id"];
    image = map["image"];
    city = map["city"];
    description = map["description"];
    pictures = map["pictures"];
    country = map["country"];
  }
}

























