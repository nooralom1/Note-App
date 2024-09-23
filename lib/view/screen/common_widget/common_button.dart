import 'package:flutter/material.dart';
import 'common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.height,
    required this.width,
    required this.btnName,
    this.fColor,
    this.fSize,
    this.fWeight,
    this.btnColor,
    required this.onTap,
  });
  final Color? btnColor;
  final double height;
  final double width;
  final String btnName;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: btnColor ?? Colors.blue,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: CommonText(
            text: btnName,
            fSize: fSize ?? 18,
            fWeight: fWeight ?? FontWeight.w500,
            fColor: fColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}