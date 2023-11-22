import 'package:ecomer/layout/shop_app/shop_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late String email, password, fname, lname, address, phone;

  final Rx<User?> _user = Rx<User?>(null);

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(auth.authStateChanges());
  }

  void login() async {
    try {
      await auth
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        // ignore: avoid_print
        print(value);
      });
      Get.offAll(const ShopLayout());
    } catch (e) {
      Get.snackbar('Error Login Account', e.toString());
    }
  }

  void createEmail() async {
    try {
      await auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        // ignore: avoid_print
        print(value);
      });
      Get.offAll(const ShopLayout());
    } catch (e) {
      Get.snackbar('Error Login Account', e.toString());
    }
  }
}
