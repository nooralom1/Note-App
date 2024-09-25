import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void onInit() {
    mailController.text = "noor@gmail.com";
    passController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
