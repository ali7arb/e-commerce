import 'package:ecomer/controller/login_controller.dart';
import 'package:ecomer/layout/shop_app/shop_layout.dart';
import 'package:ecomer/modules/login_screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerView extends GetWidget<AuthController> {
  const ControllerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null)
          ? const ShopLayout()
          : LoginScreen();
    });
  }
}
