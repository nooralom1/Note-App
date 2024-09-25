import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/controller/getx_controller/add_notes.dart';
import 'package:notes/controller/getx_controller/home.dart';
import 'package:notes/view/screen/add_notes/widget/date_time_field.dart';
import 'package:notes/view/screen/add_notes/widget/description_field.dart';
import 'package:notes/view/screen/add_notes/widget/tittle_field.dart';
import 'package:notes/view/screen/common_widget/common_button.dart';
import 'package:notes/view/screen/common_widget/common_text.dart';
import 'package:notes/view/screen/home/home_screen.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    AddNotesController addNotesController = Get.put(AddNotesController());
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xffffffcc),
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
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DateTimeField(controller: addNotesController.dateTimeController,),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: "Title", fWeight: FontWeight.w600),
                ],
              ),
              TittleField(controller: addNotesController.tittleController,),
              SizedBox(height: Get.height * 0.04),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonText(text: "Description", fWeight: FontWeight.w600),
                ],
              ),
              DescriptionField(controller: addNotesController.descriptionController,),
              SizedBox(height: Get.height * 0.1),
              CommonButton(
                  height: Get.height * 0.06,
                  width: Get.width,
                  btnName: ("Save"),
                  onTap: ()async{
                    await addNotesController.addNotes();
                    await homeController.getNotes();
                    Get.off(()=>const Home());
                  })
            ],
          ),
        ),
      ),
    );
  }
}