import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
              '1 Item',
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
      body: buildFavItem(context),
    );
  }
}

Widget buildFavItem(
  context,
) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.width / 3,
        child: Row(
          children: [
            const Image(
              image: AssetImage('assets/images/Image Popular Product 1.png'),
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
                  const Text(
                    'Text',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      height: 3,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          // ShopCubit.get(context)
                          //     .changeFavorites(model.productModel.id);
                        },
                        icon: const CircleAvatar(
                          radius: 15,
                          // backgroundColor: (ShopCubit.get(context)
                          //             .favorites[model.productModel.id] ??
                          //         true
                          //     ? Colors.deepOrange
                          //     : Colors.grey[500]),
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
