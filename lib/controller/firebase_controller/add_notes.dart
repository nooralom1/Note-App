import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddNotesService {
  static Future<bool> addNoteService(
      {required Map<String, dynamic> notes}) async {
    try {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("Notes").add(notes);
      return true;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return false;
  }
}
