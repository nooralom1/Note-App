
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddNotesService {
  static Future<bool> addNoteService(
      {required Map<String, dynamic> notes}) async {
    try {
      log("+++++++++++++");
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("Notes").add(notes);
      log("++++++111111+++++++");
      return true;
    } catch (e) {
      log("+++++++22222222222++++++");
      debugPrint("Error: $e");
    }
    log("++++++333333+++++++");
    return false;
  }
}