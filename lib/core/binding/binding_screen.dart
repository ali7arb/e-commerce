import 'package:get/get.dart';
import '../../controller/api_controller.dart';
import '../../controller/favorite_controller.dart';
import '../../controller/login_controller.dart';
import '../../controller/shop_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.put(AuthController());
    Get.put(ShopController());
    Get.put(FavoriteController());
  }
}
