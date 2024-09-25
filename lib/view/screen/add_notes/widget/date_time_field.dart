import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeField extends StatelessWidget {
  const DateTimeField({
    super.key, required this.controller,

  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height*0.06,
      width: Get.width*0.42,
      child: TextField(
        controller: controller,
        decoration:  InputDecoration(
            hintText: DateTime.now().toString().substring(0,16),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}