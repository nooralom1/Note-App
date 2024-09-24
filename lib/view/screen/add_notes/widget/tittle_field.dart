import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TittleField extends StatelessWidget {
  const TittleField({
    super.key, required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
            hintText: "Input a Title",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
