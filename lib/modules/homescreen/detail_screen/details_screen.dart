import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 1.9,
                width: MediaQuery.of(context).size.height,
                color: Colors.blueGrey.withOpacity(.1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios_new_outlined,
                                color: Colors.black,
                              )),
                        ),
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/Image Popular Product 1.png',
                      width: MediaQuery.of(context).size.height / 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/ps4_console_white_1.png',
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/ps4_console_white_1.png',
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/ps4_console_white_1.png',
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/ps4_console_white_1.png',
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width,
                          width: MediaQuery.of(context).size.height,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Wireless Controller for PS4',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    height: 50,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.4),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        )),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                'Wireless Controller for PS4 gives you what\nyou want in your gaming from over precison\n'
                                'control your ganes to sharing ...',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'See More Detail >',
                                ),
                              ),
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(.1),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const CircleAvatar(
                                      radius: 15,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const CircleAvatar(
                                      radius: 15,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const CircleAvatar(
                                      radius: 15,
                                    ),
                                    const Spacer(),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove,
                                            color: Colors.orange,
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.orange,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: MaterialButton(
                                  height: 60,
                                  minWidth: 300,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: Colors.deepOrange,
                                  onPressed: () {},
                                  child: const Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
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
      ),
    );
  }
}
