import 'package:ecomer/modules/forgotpassword_screen/forgotpasswordscreen.dart';
import 'package:ecomer/modules/onboardingscreen/onboarding_screen.dart';
import 'package:ecomer/modules/register_screen/registerscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login_success.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateTo(
                context,
                const OnBoardingScreen(),
              );
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                'sing in with your email nad password \n or continue with social media',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style:
                        TextStyle(color: Colors.grey[500], fontFamily: 'Muli'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, const ForgotPasswordScreen());
                    },
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'Muli',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
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
                  navigateTo(context, const LoginSuccess());
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
                height: 50,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don`t have an account?',
                      style: TextStyle(
                        color: Colors.grey[500],
                      )),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, const RegisterScreen());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
