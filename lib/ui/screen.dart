import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';
import 'package:screen_test/constants/gradient.dart';
import 'package:screen_test/constants/images.dart';
import 'package:screen_test/widgets/blur_circle_background.dart';
import 'package:screen_test/widgets/gradien_border.dart';
import 'package:screen_test/widgets/gradient_button.dart';
import 'package:screen_test/widgets/subscription_check_empty.dart';
import 'package:screen_test/widgets/subscription_offers.dart';
import 'package:screen_test/widgets/text_widgets/bottom_documentation.dart';
import 'package:screen_test/widgets/text_widgets/old_price.dart';
import 'package:screen_test/widgets/text_widgets/payment_time.dart';
import 'package:screen_test/widgets/text_widgets/subscription_description.dart';
import 'package:screen_test/widgets/text_widgets/subscription_price.dart';
import 'package:screen_test/widgets/text_widgets/title_luminous.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const TopCircularBlur(),
              const BottomCircularBlur(),
              Column(
                children: [
                  const SizedBox(height: 71),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 16),
                      Image(image: AppImages.arrow)
                    ],
                  ),
                  const TitleLuminous(text: 'Выберите подписку'),
                  const SizedBox(height: 64),
                  Container(
                    padding: const EdgeInsets.all(27),
                    width: 321,
                    height: 131,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: AppColors.white.withOpacity(0.1),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubscriptionCheckEmpty(),
                        SizedBox(width: 21),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PaymentTime(text: '1 Месяц'),
                            SizedBox(height: 6),
                            SubscriptionDescription(text: 'Описание'),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: SubscriptionPrice(text: '1000'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 33),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Flexible(
                        child: Container(
                          width: 321,
                          decoration: BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.white.withOpacity(0),
                                  AppColors.white,
                                ],
                              ),
                            ),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.black.withOpacity(0.37),
                                borderRadius: BorderRadius.circular(29),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(21, 26, 26, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AppImages.task),
                                            gradient: appGradient(),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        const SizedBox(width: 21),
                                        const Column(
                                          children: [
                                            PaymentTime(text: '6 месяц'),
                                            SizedBox(height: 6),
                                            SubscriptionDescription(
                                                text: 'Описание')
                                          ],
                                        ),
                                        const Spacer(),
                                        const Column(
                                          children: [
                                            SizedBox(height: 5),
                                            SubscriptionPrice(text: '10 000'),
                                            OldPrice(oldPrice: '12000'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 35),
                                    const SubscriptionOffers(
                                        text: 'что входит'),
                                    const SubscriptionOffers(
                                        text: 'что входит'),
                                    const SubscriptionOffers(
                                        text: 'что входит'),
                                    const SubscriptionOffers(
                                        text: 'что входит'),
                                    const SubscriptionOffers(
                                        text: 'что входит'),
                                    const SizedBox(height: 27),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const ProfitableBanner(),
                    ],
                  ),
                  const SizedBox(height: 21),
                  const GradientButton(
                    text: 'Купить',
                    width: 317,
                    height: 60,
                  ),
                  const SizedBox(height: 66),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BottomDocumentation(text: 'terms of use'),
                        const BottomDocumentation(text: 'policy privacy'),
                        Container(
                          alignment: Alignment.center,
                          width: 142,
                          height: 35,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: const BottomDocumentation(
                              text: 'Restore purchase'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopCircularBlur extends StatelessWidget {
  const TopCircularBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: -199,
      top: 80,
      child: BlurCircleBackground(
        width: 317,
        height: 359,
      ),
    );
  }
}

class BottomCircularBlur extends StatelessWidget {
  const BottomCircularBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      right: -245,
      top: 370,
      child: BlurCircleBackground(
        width: 414,
        height: 359,
      ),
    );
  }
}

class ProfitableBanner extends StatelessWidget {
  const ProfitableBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -11,
      top: -15,
      child: Container(
        alignment: Alignment.center,
        width: 75,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColors.white,
        ),
        child: const Text(
          'выгодно',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
