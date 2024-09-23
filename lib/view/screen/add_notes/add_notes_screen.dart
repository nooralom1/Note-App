import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/view/screen/common_widget/common_button.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/home/home_screen.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Add Notes",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.off(()=>const Home());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.06),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: "Title", fWeight: FontWeight.w600),
                ],
              ),
              Container(
                height: Get.height * 0.06,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Input a Title",
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: Get.height * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: "Description", fWeight: FontWeight.w600),
                ],
              ),
              Container(
                height: Get.height * 0.4,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Input a Description",
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: Get.height * 0.1),
              CommonButton(
                  height: Get.height * 0.06,
                  width: Get.width,
                  btnName: ("Save"),
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
