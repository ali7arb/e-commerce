import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import 'completeprofile.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  final AuthController controller = Get.put(AuthController());

  RegisterScreen({super.key});
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateTo(context, LoginScreen());
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
          child: Form(
            key: formkey,
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
                  type: TextInputType.text,
                  label: 'Password',
                  hintText: 'Enter your password',
                  suffix: Icons.lock_outlined,
                  onSave: (value) {
                    controller.password = value.toString();
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
                  type: TextInputType.text,
                  label: 'Re-Password',
                  hintText: 'Enter your password',
                  suffix: Icons.lock_outlined,
                  onSave: (value) {
                    controller.password = value.toString();
                  },
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                defaultButton(
                  text: 'continue',
                  function: () {
                    formkey.currentState?.save();
                    if (formkey.currentState!.validate()) {
                      Get.to(CompleteProfileScreen());
                    }
                  },
                  radius: 30,
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
      ),
    );
  }
}
