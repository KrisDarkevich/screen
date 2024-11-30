import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';
import 'package:screen_test/constants/gradient.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const GradientButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: appGradient(),
        borderRadius: BorderRadius.circular(29),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
