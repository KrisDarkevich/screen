import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';
import 'package:screen_test/widgets/text_widgets/subscription_description.dart';

class SubscriptionOffers extends StatelessWidget {
  final String text;
  const SubscriptionOffers({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Container(
            width: 7,
            height: 7,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.white),
          ),
          const SizedBox(width: 16),
          SubscriptionDescription(text: text),
        ],
      ),
    );
  }
}
