import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class BottomDocumentation extends StatelessWidget {
  final String text;
  const BottomDocumentation({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.white.withOpacity(0.3),
        fontSize: 12,
      ),
    );
  }
}
