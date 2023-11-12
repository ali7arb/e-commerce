import 'package:flutter/material.dart';

class ProductModel {
  int id = 1;
  String image = 'a';
  String title = 'a';
  String price = 'a';
  ProductModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<ProductModel> productItem = [
  ProductModel(
    id: 1,
    image: 'assets/images/Image Popular Product 1.png',
    title: 'Wireless Controller\nfor PS4',
    price: '\$64.99',
  ),
  ProductModel(
    id: 2,
    image: 'assets/images/Image Popular Product 2.png',
    title: 'Nike Sport White\nMan Pant',
    price: '\$55.5',
  ),
  ProductModel(
    id: 3,
    image: 'assets/images/Image Popular Product 3.png',
    title: 'Hit',
    price: '\$64.99',
  ),
];

class IconModel {
  late final String title;
  final IconData? icon;

  IconModel({
    required this.title,
    required this.icon,
  });
}

List<IconModel> IconItem = [
  IconModel(
    title: 'Flash\nDeal',
    icon: Icons.flash_on_rounded,
  ),
  IconModel(
    title: 'Bill',
    icon: Icons.format_align_center,
  ),
  IconModel(
    title: 'Game',
    icon: Icons.games_outlined,
  ),
  IconModel(
    title: 'Daily\nGift',
    icon: Icons.card_giftcard,
  ),
  IconModel(
    title: 'More',
    icon: Icons.more_horiz,
  ),
];

class SpecialProductModel {
  String text1 = 'a';
  String text2 = 'b';
  String image = 'c';

  SpecialProductModel(
      {required this.image, required this.text1, required this.text2});
}

List<SpecialProductModel> specialItem = [
  SpecialProductModel(
    image: 'assets/images/Image Banner 2.png',
    text1: 'Smartphone',
    text2: '18 Brands',
  ),
  SpecialProductModel(
    image: 'assets/images/Image Banner 3.png',
    text1: 'Fashion',
    text2: '24 Brands',
  ),
];

class PhotoDetails {
  String image = '';

  PhotoDetails({
    required this.image,
  });
}

List<PhotoDetails> DetailsIthem = [
  PhotoDetails(
    image: 'assets/images/ps4_console_white_1.png',
  ),
  PhotoDetails(
    image: 'assets/images/ps4_console_white_2.png',
  ),
  PhotoDetails(
    image: 'assets/images/ps4_console_white_3.png',
  ),
  PhotoDetails(
    image: 'assets/images/ps4_console_white_4.png',
  ),
];
