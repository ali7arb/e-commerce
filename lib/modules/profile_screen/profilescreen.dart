import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Title {
  late final String title;
  final IconData? icon;

  Title({
    required this.title,
    required this.icon,
  });
}

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  List<Title> titleItem = [
    Title(
      title: 'My Account',
      icon: Icons.person_outline_outlined,
    ),
    Title(
      title: 'Notifications',
      icon: Icons.notifications_outlined,
    ),
    Title(
      title: 'Settings',
      icon: Icons.settings,
    ),
    Title(
      title: 'Help Center',
      icon: Icons.help_outline,
    ),
    Title(
      title: 'Log Out',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Hello, Ali',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      maxRadius: 46,
                      backgroundColor: Colors.deepOrange.withOpacity(0.9),
                      child: CircleAvatar(
                        maxRadius: 43,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Colors.grey[200],
                          child: const Text(
                            'A H',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.separated(
                    itemBuilder: (context, index) =>
                        buildItem(titleItem[index], context),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                    itemCount: titleItem.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItem(Title model, context) => Column(
        children: [
          InkWell(
            onTap: () {
              _auth.signOut();
              Get.offAll(LoginScreen());
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    model.icon,
                    color: Colors.deepOrange.withOpacity(0.9),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text(
                      model.title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontFamily: 'Muli',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
