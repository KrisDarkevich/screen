import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class SubscriptionCheckEmpty extends StatelessWidget {
  const SubscriptionCheckEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.white,
            width: 1,
          )),
    );
  }
}
