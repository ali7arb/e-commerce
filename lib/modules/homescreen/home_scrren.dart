import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent[100],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.flash_on_rounded,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent[100],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.format_align_center,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent[100],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.games_outlined,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent[100],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.card_giftcard,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent[100],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Flash\nDeal',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  Text(
                    'Bill',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  Text(
                    'Game',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  Text(
                    'Daily\nGift',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 100,
                        width: 250,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              'assets/images/Image Banner 2.png',
                            ),
                          ),
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Smartphone',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '18 Brands',
                                style: TextStyle(
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
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 250,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              'assets/images/Image Banner 3.png',
                            ),
                          ),
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fashion',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '24 Brands',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Muli',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                  'assets/images/Image Popular Product 1.png',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onTap: () {},
                        ),
                        const Text('Wireless Controller\nfor PS4'),
                        Row(
                          children: [
                            const Text(
                              '\$64.99',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                            const SizedBox(
                              width: 40,
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
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                  'assets/images/Image Popular Product 2.png',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const Text('Nike Sport White\nMan Pant'),
                        Row(
                          children: [
                            const Text(
                              '\$55.5',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                            const SizedBox(
                              width: 40,
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
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(
                                  'assets/images/Image Popular Product 3.png',
                                ),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const Text('Hat'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              '\$64.99',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
