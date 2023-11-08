import 'package:ecomer/modules/homescreen/home_scrren.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'Login Success',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/success.png'),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Login Success',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'MuliBold',
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          MaterialButton(
            onPressed: () {
              navigateTo(context, HomeScreen());
            },
            minWidth: 200,
            height: 50,
            color: Colors.deepOrange,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'Back To Home',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Muli',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
