import 'package:ecomer/layout/shop_app/cubit/cubit.dart';
import 'package:ecomer/layout/shop_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCubit(),
      child: BlocConsumer<ShopCubit, ShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ShopCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.changeBottom(index);
              },
              currentIndex: cubit.currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message,
                  ),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
