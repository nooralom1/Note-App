import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notes/controller/firebase_controller/add_notes.dart';

class AddNotesController extends GetxController {
  TextEditingController tittleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();

  RxBool isLoading = false.obs;

  addNotes() async {
    Map<String, dynamic> notes = {
      "tittle": tittleController.text,
      "description": descriptionController.text,
      "dateTime": dateTimeController.text = DateTime.now().toString().substring(0,16).toString(),
    };
    isLoading.value = true;
    log("================");
    var status = await AddNotesService.addNoteService(notes: notes);
    log("=======11111111=========");
    isLoading.value = false;
    if (status) {
      tittleController.clear();
      descriptionController.clear();
      dateTimeController.clear();
    }
  }
}