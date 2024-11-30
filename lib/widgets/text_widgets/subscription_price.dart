import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class SubscriptionPrice extends StatelessWidget {
  final String text;
  const SubscriptionPrice({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$textр',
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 16,
      ),
    );
  }
}
