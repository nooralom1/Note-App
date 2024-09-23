import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controller/getx_controller/authentication/sign_in.dart';
import 'package:notes/view/screen/authentication/sign_up.dart';
import 'package:notes/view/screen/authentication/widget/circle_button.dart';
import 'package:notes/view/screen/authentication/widget/mail_field.dart';
import 'package:notes/view/screen/authentication/widget/pass_field.dart';
import 'package:notes/view/screen/common_widget/common_button.dart';
import 'package:notes/view/screen/common_widget/common_loading_button.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/home/home_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CommonText(
                      text: "Welcome", fSize: 25, fWeight: FontWeight.bold),
                  SizedBox(width: screenWidth * 0.03),
                  const CommonText(
                    text: "Sign In",
                    fSize: 25,
                    fWeight: FontWeight.bold,
                    fColor: Colors.blue,
                  )
                ]),
                const CommonText(text: "We missed you! Signin to continue your"),
                const CommonText(text: "journey with us."),
                SizedBox(height: screenHeight * 0.04),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Email")]),
                MailField(
                    mailController: controller.mailController,
                    prefixIcon: Icons.email_outlined),
                SizedBox(height: screenHeight * 0.02),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CommonText(text: "Password")]),
                PassField(
                    passController: controller.passController,
                    prefixIcon: Icons.lock_outline_sharp),
                SizedBox(height: screenHeight * 0.08),
                Obx(() => controller.isLoading.value
                    ? const CommonLoadingButton()
                    : CommonButton(
                    height: screenHeight * 0.06,
                    width: screenWidth,
                    btnName: "Sign In",
                    onTap: ()  {Get.offAll(()=>const Home());})),
                SizedBox(height: screenHeight * 0.04),
                const Divider(),
                SizedBox(height: screenHeight * 0.03),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CircleButton(
                    imageUrl: "asset/image/google_icon.png",
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  const CircleButton(imageUrl: "asset/image/facebook_icon.png"),
                ]),
                SizedBox(height: screenHeight * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                        text: "Doesnot have an account?   ",
                        fWeight: FontWeight.w500),
                    InkWell(
                      onTap: () {
                        Get.to(() => const SignUp());
                      },
                      child: const CommonText(
                          text: "Signup",
                          fWeight: FontWeight.w500,
                          fColor: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}