import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetNotesService {
  static Future<QuerySnapshot<Map<String, dynamic>>?> getNoteService() async {
    try {
      log("+++++++++++++");
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      QuerySnapshot<Map<String, dynamic>> data =
      await firebaseFirestore.collection("Notes").get();
      return data;
    } catch (e) {
      log("+++++++22222222222++++++");
      debugPrint("Error: $e");
    }
    log("++++++333333+++++++");
    return null;
  }
}