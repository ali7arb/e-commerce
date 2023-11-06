import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;

  BoardingModel({required this.image});
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/splash_1.png',
    ),
    BoardingModel(
      image: 'assets/images/splash_2.png',
    ),
    BoardingModel(
      image: 'assets/images/splash_3.png',
    ),
  ];
  var boardingController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Text(
              'TOKOTO',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Welcome to Tokoto, Lets shop!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: PageView.builder(
                controller: boardingController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SmoothPageIndicator(
              controller: boardingController,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.deepOrange,
                dotHeight: 5,
                dotWidth: 7,
                expansionFactor: 3,
                spacing: 3,
              ),
              count: boarding.length,
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              height: 50,
              textColor: Colors.white,
              elevation: 0,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.deepOrange,
              onPressed: () {
                navigateTo(
                  context,
                  const LoginScreen(),
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontFamily: 'Muli',
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        children: [
          Image.asset(
            model.image,
            height: 300,
            width: 400,
          ),
        ],
      );
}
