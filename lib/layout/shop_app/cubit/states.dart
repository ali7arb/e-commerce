abstract class ShopStates {}

class ShopInitialState extends ShopStates {}

class ShopChangeBottomNavState extends ShopStates {}

class ShopChangeFavoritesState extends ShopStates {}

class ShopErrorChangeFavoritesState extends ShopStates {
  final String error;

  ShopErrorChangeFavoritesState(this.error);
}
