import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class OldPrice extends StatelessWidget {
  final String oldPrice;
  const OldPrice({
    super.key,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$oldPriceр',
      style: TextStyle(
        fontSize: 12,
        decoration: TextDecoration.lineThrough,
        decorationColor: AppColors.white.withOpacity(0.46),
        color: AppColors.white.withOpacity(0.46),
      ),
    );
  }
}
