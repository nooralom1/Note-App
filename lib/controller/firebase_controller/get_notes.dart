import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetNotesService {
  static Future<QuerySnapshot<Map<String, dynamic>>?> getNoteService() async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      QuerySnapshot<Map<String, dynamic>> data =
      await firebaseFirestore.collection("Notes").get();
      return data;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}