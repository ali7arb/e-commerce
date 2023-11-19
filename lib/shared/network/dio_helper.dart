import 'package:dio/dio.dart';

import '../../model/shopmodel/shop_model.dart';

class DioHelper {
  static const String baseUrl = 'https://fakestoreapi.com';

  Dio dio = Dio();

  Future<List<ShopModel>> getProducts() async {
    try {
      Response response = await dio.get('$baseUrl/products');
      if (response.statusCode == 200) {
        List<ShopModel> products = (response.data as List)
            .map((item) => ShopModel.fromJson(item))
            .toList();
        return products;
      } else {
        throw Exception('Failed to fetch products');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
