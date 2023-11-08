import 'package:ecomer/layout/shop_app/cubit/cubit.dart';
import 'package:ecomer/layout/shop_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return buildFavItem(context);
      },
    );
  }
}

Widget buildFavItem(context) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.width / 4,
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
                      height: 1.3,
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

                          //     .changeFavorites(model.product.id);
                        },
                        icon: const CircleAvatar(
                          radius: 15,

                          // backgroundColor: (ShopCubit.get(context)

                          //     .favorites[model.product.id] ??

                          //     true)

                          //     ? defaultColor

                          //      :Colors.grey,

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
