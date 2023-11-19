import 'package:ecomer/modules/homescreen/home_scrren.dart';
import 'package:get/get.dart';

import '../modules/chat_screen/chatscreen.dart';
import '../modules/favorite_screen/favoritescreen.dart';
import '../modules/profile_screen/profilescreen.dart';

class ShopController extends GetxController {
  var currentIndex = 0.obs;
  var bottomScreens = [
    HomeScreen(),
    const FavoriteScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  void changeBottom(int index) {
    currentIndex.value = index;
  }
}
