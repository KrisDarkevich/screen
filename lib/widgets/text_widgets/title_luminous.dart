import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class TitleLuminous extends StatelessWidget {
  final String text;
  const TitleLuminous({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.white,
        fontSize: 20,
        shadows: [
          Shadow(
            color: AppColors.white.withOpacity(0.4),
            offset: const Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
    );
  }
}
