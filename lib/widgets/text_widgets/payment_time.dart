import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class PaymentTime extends StatelessWidget {
  final String text;
  const PaymentTime({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 15,
      ),
    );
  }
}
