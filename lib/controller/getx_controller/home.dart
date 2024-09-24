import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notes/controller/firebase_controller/get_notes.dart';

class HomeController extends GetxController{

  RxBool isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  RxList<dynamic> user = [].obs;

  getNotes() async {
    isLoading.value = true;
    log("================");
    QuerySnapshot<Map<String, dynamic>>? get =
    await GetNotesService.getNoteService();
    if (get != null) {
      for (var data in get.docs.toList()) {
        var name = ({data["tittle"]});
        log("++++++++++++++user: $name");
      }
    }
    isLoading.value = false;
  }
}