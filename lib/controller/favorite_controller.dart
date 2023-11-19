import 'package:get/get.dart';
import '../model/shopmodel/shop_model.dart';

class FavoriteController extends GetxController {
  final RxList<ShopModel> favorites = <ShopModel>[].obs;

  void addToFavorites(ShopModel product) {
    if (!favorites.contains(product)) {
      product.toggleFavorite();
      favorites.add(product);
    }
  }

  void removeFromFavorites(ShopModel product) {
    product.toggleFavorite();
    favorites.remove(product);
  }

  bool isFavorite(ShopModel product) {
    return favorites.contains(product);
  }
}
