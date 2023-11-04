import 'package:ecomer/modules/register_screen/registerscreen.dart';
import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';

import 'otpvreification.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateTo(context, const RegisterScreen());
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: const Text('First Name'),
                hintText: 'Enter your first name',
                suffixIcon: const Icon(
                  Icons.person,
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
                label: const Text('Last Name'),
                hintText: 'Enter your Last name',
                suffixIcon: const Icon(
                  Icons.person,
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
                label: const Text('Phone Number'),
                hintText: 'Enter your phone number',
                suffixIcon: const Icon(
                  Icons.phone_android_outlined,
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
                label: const Text('Address'),
                hintText: 'Enter your address',
                suffixIcon: const Icon(
                  Icons.location_on_outlined,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
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
                navigateTo(context, const OtpVerification());
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
    );
  }
}
