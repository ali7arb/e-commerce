import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            navigateTo(context, const LoginScreen());
          },
        ),
      ),
    );
  }
}
