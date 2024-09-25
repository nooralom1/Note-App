import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controller/getx_controller/home.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/home/home_screen.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({
    super.key,
    required this.tittle,
    required this.description,
    required this.dateTime,
  });
  final String tittle;
  final String description;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xffffffcc),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Note",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.off(const Home());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonText(text: dateTime, fSize: 20),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              CommonText(
                text: tittle,
                fSize: 22,
                fWeight: FontWeight.bold,
              ),
              SizedBox(height: Get.height * 0.04),
              CommonText(
                text: description,
                fSize: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
