import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void onInit() {
    nameController.text = "Noor Alam";
    mailController.text = "noor@gmail.com";
    passController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    mailController.dispose();
    passController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
