import 'package:get/get.dart';
import 'package:notes/view/screen/authentication/sign_up.dart';

class SplashController extends GetxController {
  nextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.to(() => const SignUp());
  }

  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}