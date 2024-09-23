import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/view/screen/add_notes/add_notes_screen.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/note_details/note_details_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const NoteDetails());
                  },
                  child: Container(
                    height: Get.height * 0.2,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CommonText(
                                text: "Product Management",
                                fWeight: FontWeight.bold,
                                fSize: 17,
                              ),
                              CommonText(
                                  text: DateTime.now()
                                      .toString()
                                      .substring(0, 16)
                                      .toString())
                            ],
                          ),
                          SizedBox(height: Get.height * 0.01),
                          const CommonText(
                            text:
                                "Product management is a strategic role within a company that involves overseeing the development and management of a product or suite of products throughout their lifecycle. The primary goal of a product manager is to create and deliver products that meet customer needs, align with business objectives, and generate value for the organization.Market research and analysis: Product managers conduct market research to understand customer needs, preferences, and trends. They analyze market data and competitive landscape to identify opportunities and make informed product decisions.Product strategy: Product managers define the product vision, goals, and strategy based on market research and",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddNotes());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
