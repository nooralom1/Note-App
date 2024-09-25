import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
        height: screenHeight * 0.06,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: CircularProgressIndicator(
          color: Colors.white,
          backgroundColor: Colors.blue,
        )));
  }
}
