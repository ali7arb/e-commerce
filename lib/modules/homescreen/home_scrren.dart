import 'package:flutter/material.dart';

import '../../model/shopmodel/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: MediaQuery.of(context).size.width / 1.2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildItemProduct(productItem[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: productItem.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemProduct(ProductModel model) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      model.image,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onTap: () {},
            ),
            Text(
              model.title,
            ),
            Row(
              children: [
                Text(
                  model.price,
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
