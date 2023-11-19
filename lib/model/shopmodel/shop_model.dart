class ShopModel {
  int? id;
  String? title;
  double? price;

  String? image;

  ShopModel({
    this.id,
    this.title,
    this.price,
    this.image,
  });

  ShopModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price']?.toDouble();
    image = json['image'];
  }
}
