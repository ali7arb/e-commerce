import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/favorite_controller.dart';
import '../../model/shopmodel/shop_model.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoriteController favoriteController = Get.find<FavoriteController>();

  FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'My Favorites',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Text(
              '${favoriteController.favorites.length}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Muli',
                color: Colors.deepOrange.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
      body: Obx(
        () {
          if (favoriteController.favorites.isEmpty) {
            return const Center(
              child: Text('No favorite item yet.'),
            );
          } else {
            return ListView.separated(
              itemBuilder: (context, index) {
                ShopModel product = favoriteController.favorites[index];
                return buildFavItem(context, product);
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: favoriteController.favorites.length,
            );
          }
        },
      ),
    );
  }
}

Widget buildFavItem(context, ShopModel model) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: [
            Image(
              image: NetworkImage('${model.image}'),
              width: 120,
              height: 120,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 3,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        '${model.price}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.favorite_border,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
