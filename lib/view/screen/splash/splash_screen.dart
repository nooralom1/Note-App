import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controller/getx_controller/splash.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: Get.height * 0.4,
                width: Get.width * 0.8,
                child: Image.asset(
                  "asset/image/splash-removebg-preview.png",
                  fit: BoxFit.fill,
                )),
            const CommonText(
                text: 'Welcome to Note App',
                fColor: Colors.blue,
                fWeight: FontWeight.bold,
                fSize: 25),
          ],
        ),
      ),
    );
  }
}
