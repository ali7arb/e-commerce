import 'package:ecomer/layout/shop_app/cubit/states.dart';
import 'package:ecomer/modules/chat_screen/chatscreen.dart';
import 'package:ecomer/modules/favorite_screen/favoritescreen.dart';
import 'package:ecomer/modules/homescreen/home_scrren.dart';
import 'package:ecomer/modules/profile_screen/profilescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());
  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  Map<int, bool> favorites = {};

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

  void changeFavorites(int productId) {
    favorites[productId] = !favorites[productId]!;

    emit(ShopChangeFavoritesState());
  }
}
