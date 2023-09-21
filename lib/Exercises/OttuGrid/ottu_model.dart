class Category{
  int? id;
  String? name;
  List<Product>? products;
  Category(Map map){
    id = map["id"];
    name = map["name"];
    List productList = map["products"];
    products = productList.map((e)=>Product(e)).toList();
  }
}

class Product{
  int? id;
  String? name;
  String? image;
  num? price;

  Product(Map map){
    id = map["id"];
    name = map["name"];
    image = map["image"];
    price = map["price"];
  }
}