import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'completeprofile.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateTo(context, const LoginScreen());
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Register Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Complete your details or continue \n with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: const Text('Email'),
                  hintText: 'Enter your email',
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: const Text('Password'),
                  hintText: 'Enter your password',
                  suffixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: const Text('Confirm Password'),
                  hintText: 'Re-enter your password',
                  suffixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                height: 50,
                textColor: Colors.white,
                elevation: 0,
                minWidth: 350,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                color: Colors.deepOrange,
                onPressed: () {
                  navigateTo(context, const CompleteProfileScreen());
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
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    maxRadius: 15,
                    child: SvgPicture.asset('assets/icons/google-icon.svg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    maxRadius: 15,
                    child: SvgPicture.asset('assets/icons/facebook-2.svg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Colors.grey[300],
                    child: SvgPicture.asset('assets/icons/twitter.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'By continuing your confirm that you agree',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
