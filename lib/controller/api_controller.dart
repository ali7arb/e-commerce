import 'package:get/get.dart';

import '../model/shopmodel/shop_model.dart';
import '../shared/network/dio_helper.dart';

class ProductController extends GetxController {
  var products = <ShopModel>[].obs;

  DioHelper dioHelper = DioHelper();
  late ShopModel shopModel;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    try {
      List<ShopModel> fetchedProducts = await dioHelper.getProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      // ignore: avoid_print
      print('Exception: $e');
    }
    // ignore: avoid_print
    print(fetchProducts);
  }
}
