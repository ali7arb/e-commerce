import 'package:ecomer/modules/homescreen/home_scrren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'MuliBold',
          primarySwatch: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
          )),
      home: const HomeScreen(),
    );
  }
}
