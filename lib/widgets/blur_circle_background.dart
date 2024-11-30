import 'package:flutter/material.dart';
import 'package:screen_test/constants/colors.dart';

class BlurCircleBackground extends StatelessWidget {
  final double width;
  final double height;
  const BlurCircleBackground({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: OvalBlurPainter(),
    );
  }
}

class OvalBlurPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.primary
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 100);

    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}