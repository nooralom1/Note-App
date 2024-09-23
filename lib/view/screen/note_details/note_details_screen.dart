import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/home/home_screen.dart';

class NoteDetails extends StatelessWidget {
  const NoteDetails({super.key});

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
              Get.off(const Home());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.06),
            const CommonText(
              text: "Product Management",
              fSize: 22,
            ),
            SizedBox(height: Get.height * 0.04),
            const CommonText(
                text:
                    "Product management is a strategic role within a company that involves overseeing the development and management of a product or suite of products throughout their lifecycle. The primary goal of a product manager is to create and deliver products that meet customer needs, align with business objectives, and generate value for the organization.Market research and analysis: Product managers conduct market research to understand customer needs, preferences, and trends. They analyze market data and competitive landscape to identify opportunities and make informed product decisions.Product strategy: Product managers define the product vision, goals, and strategy based on market research and")
          ],
        ),
      ),
    );
  }
}
