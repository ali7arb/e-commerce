import 'package:get/get.dart';

import '../model/shopmodel/shop_model.dart';
import '../shared/network/dio_helper.dart';
// Import your DioHelper

class ProductController extends GetxController {
  var products = <ShopModel>[].obs; // RxList to store ShopModel instances

  DioHelper dioHelper = DioHelper();

  @override
  void onInit() {
    super.onInit();
    fetchProducts(); // Fetch products when the controller initializes
  }

  void fetchProducts() async {
    try {
      List<ShopModel> fetchedProducts = await dioHelper.getProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      print('Exception: $e');
    }
    print(fetchProducts);
  }
}
