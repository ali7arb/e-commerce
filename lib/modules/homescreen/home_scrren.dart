import 'package:ecomer/model/shopmodel/shop_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/api_controller.dart';
import '../../model/shopmodel/product_model.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search product',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.grey[700],
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: Colors.grey[700],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurple,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A Summer Surprise',
                            style: TextStyle(
                              fontFamily: 'Muli',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Cashback 20%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 4.2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildIconItem(IconItem[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 25,
                  ),
                  itemCount: 5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Special for you',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See More',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 3.1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildSpecialPro(specialItem[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: specialItem.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'See More',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () {
                  if (productController.products.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return SizedBox(
                      height: MediaQuery.of(context).size.width / 1.5,
                      width: MediaQuery.of(context).size.height / 1.3,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildItemProduct(
                            productController.products[index], context),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 20,
                        ),
                        itemCount: productController.products.length,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemProduct(ShopModel model, context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.height / 5.5,
          child: Column(
            children: [
              InkWell(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      // fit: BoxFit.fitHeight,
                      image: NetworkImage(
                        '${model.image}',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onTap: () {},
              ),
              Text(
                '${model.title}',
                maxLines: 2,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${model.price}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Colors.grey[300],
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIconItem(IconModel icons) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent.withOpacity(0.4),
                ),
                child: Icon(
                  icons.icon,
                  color: Colors.deepOrange.withOpacity(0.3),
                ),
              ),
            ),
            Text(
              icons.title,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildSpecialPro(SpecialProductModel special) {
    return Row(
      children: [
        InkWell(
          child: Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage(
                  special.image,
                ),
              ),
              color: Colors.grey[500],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    special.text1,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    special.text2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Muli',
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
