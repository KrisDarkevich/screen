import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class SubscriptionDescription extends StatelessWidget {
  final String text;
  const SubscriptionDescription({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 12,
      ),
    );
  }
}
