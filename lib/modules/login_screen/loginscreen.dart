import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import '../../shared/shared.dart';
import '../forgotpassword_screen/forgotpasswordscreen.dart';
import '../onboardingscreen/onboarding_screen.dart';
import '../register_screen/registerscreen.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());

  LoginScreen({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                defaultForm(
                  type: TextInputType.emailAddress,
                  label: 'Email',
                  hintText: 'Enter your email',
                  suffix: Icons.email_outlined,
                  onSave: (value) {
                    controller.email = value.toString();
                  },
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                defaultForm(
                  type: TextInputType.visiblePassword,
                  hintText: 'Enter your password',
                  suffix: Icons.lock_outline,
                  label: 'Password',
                  onSave: (value) {
                    controller.password = value.toString();
                  },
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (value) {},
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          color: Colors.grey[500], fontFamily: 'Muli'),
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
                defaultButton(
                  text: 'continue',
                  function: () {
                    formkey.currentState?.save();
                    if (formkey.currentState!.validate()) {
                      controller.login();
                    }
                  },
                  radius: 30,
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
                        navigateTo(context, RegisterScreen());
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
      ),
    );
  }
}
