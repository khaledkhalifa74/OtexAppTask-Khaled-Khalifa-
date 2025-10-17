import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomPlanFlag extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const CustomPlanFlag({
    super.key,
    required this.text,
    this.backgroundColor = kFlagBG,
    this.textColor = kRedColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FlagPainter(backgroundColor),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          right: 8,
          left: 16,
        ),
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}

class FlagPainter extends CustomPainter {
  final Color color;
  FlagPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    const double radius = 4.0;

// Start at top-left
    path.moveTo(0, 0);

// Draw to top-right - but stop before the corner
    path.lineTo(size.width - radius, 0);

// Draw the top-right rounded corner using a quadratic curve
    path.quadraticBezierTo(
      size.width, 0,
      size.width, radius,
    );

// Draw right side down
    path.lineTo(size.width, size.height);

// Draw bottom line
    path.lineTo(0, size.height);

// Draw the triangle tail
    path.lineTo(12, size.height / 2);

// Close the shape
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}