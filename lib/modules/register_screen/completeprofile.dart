import 'package:ecomer/modules/register_screen/registerscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';

// ignore: must_be_immutable
class CompleteProfileScreen extends StatelessWidget {
  CompleteProfileScreen({super.key});
  final AuthController controller = Get.put(AuthController());
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateTo(context, RegisterScreen());
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Complete Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
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
                  onSave: (value) {
                    controller.fname = value.toString();
                  },
                  type: TextInputType.text,
                  label: 'First Name',
                  hintText: 'Enter your First Name',
                  suffix: Icons.person_outline_outlined,
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
                  onSave: (value) {
                    controller.lname = value.toString();
                  },
                  type: TextInputType.text,
                  label: 'Last Name',
                  hintText: 'Enter your Last Name',
                  suffix: Icons.person_outline_outlined,
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
                  onSave: (value) {
                    controller.phone = value.toString();
                  },
                  type: TextInputType.phone,
                  label: 'Phone Number',
                  hintText: 'Enter your Phone Number',
                  suffix: Icons.phone_android_outlined,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your Phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                defaultForm(
                  onSave: (value) {
                    controller.address = value.toString();
                  },
                  type: TextInputType.text,
                  label: 'Address',
                  hintText: 'Enter your Address',
                  suffix: Icons.location_on_outlined,
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
                defaultButton(
                  text: 'continue',
                  function: () {
                    formkey.currentState?.save();
                    if (formkey.currentState!.validate()) {
                      controller.createEmail();
                    }
                  },
                  radius: 30,
                ),
                const Spacer(),
                Text(
                  'By continuing your confirm that you agree \n with our Term and Condition',
                  textAlign: TextAlign.center,
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
