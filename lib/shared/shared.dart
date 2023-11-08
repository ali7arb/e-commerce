import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
        margin: const EdgeInsets.all(10),
      ),
    );

// ignore: non_constant_identifier_names

// List<BoardingModel> boarding = [
//   BoardingModel(
//     image: 'assets/images/splash_1.png',
//   ),
//   BoardingModel(
//     image: 'assets/images/splash_2.png',
//   ),
//   BoardingModel(
//     image: 'assets/images/splash_3.png',
//   ),
// ];
