import 'package:ecomer/shared/shared.dart';
import 'package:flutter/material.dart';

class Title {
  late final String title;
  final IconData? icon;

  Title({
    required this.title,
    required this.icon,
  });
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Title> titleItem = [
    Title(
      title: 'My Order',
      icon: Icons.reorder,
    ),
    Title(
      title: 'My Details',
      icon: Icons.person_outline_outlined,
    ),
    Title(
      title: 'Change Password',
      icon: Icons.lock_outline,
    ),
    Title(
      title: 'Address Book',
      icon: Icons.home_outlined,
    ),
    Title(
      title: 'Payment Methods',
      icon: Icons.payment_outlined,
    ),
    Title(
      title: 'Settings',
      icon: Icons.settings,
    ),
    Title(
      title: 'Sign out',
      icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
            CircleAvatar(
              maxRadius: 46,
              backgroundColor: Colors.deepOrange.withOpacity(0.9),
              child: CircleAvatar(
                maxRadius: 43,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: Colors.grey[300],
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
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                itemBuilder: (context, index) => buildItem(
                  titleItem[index],
                ),
                separatorBuilder: (context, index) => myDivider(),
                itemCount: titleItem.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(Title model) => Column(
        children: [
          Container(
            height: 50,
            width: 350,
            decoration: const BoxDecoration(
              color: Colors.white,
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
        ],
      );
}
