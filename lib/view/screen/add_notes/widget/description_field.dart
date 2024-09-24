import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({
    super.key, required this.controller,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.4,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all()),
      child: TextField(
        maxLines: 10,
        controller: controller,
        decoration: const InputDecoration(
            hintText: "Input a Description",
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}