import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

LinearGradient appGradient() {
  return const LinearGradient(
    colors: [
      AppColors.primary,
      AppColors.secondary,
    ],
  );
}
