import 'package:ecomer/model/shopmodel/shop_model.dart';
import 'package:ecomer/modules/homescreen/home_scrren.dart';
import 'package:get/get.dart';
import '../modules/chat_screen/chatscreen.dart';
import '../modules/favorite_screen/favoritescreen.dart';
import '../modules/profile_screen/profilescreen.dart';

class ShopController extends GetxController {
  var currentIndex = 0.obs;
  final ShopModel shopModel = ShopModel();
  var bottomScreens = [
    HomeScreen(),
    FavoriteScreen(),
    const ChatScreen(),
    ProfileScreen(),
  ];

  void changeBottom(int index) {
    currentIndex.value = index;
  }
}
