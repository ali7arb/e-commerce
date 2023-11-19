class ShopModel {
  int? id;
  String? title;
  double? price;
  String? image;
  bool? isFavorite;

  ShopModel({
    this.isFavorite,
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
    isFavorite = false;
  }

  void toggleFavorite() {
    isFavorite = !(isFavorite ?? false);
  }
}
