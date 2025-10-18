import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class PlanInfo extends StatelessWidget {
  const PlanInfo({
    super.key,
    required this.checkBoxValue,
    required this.onChanged,
    required this.planName,
    required this.planPrice,
  });

  final bool checkBoxValue;
  final void Function(bool? p1)? onChanged;
  final String planName;
  final String planPrice;

  @override
  Widget build(BuildContext context) {
    double textWidth = 0;

    final textSpan = TextSpan(
      text: planPrice,
      style: Styles.textStyle16.copyWith(
        color: kHeadlineTextColor,
      ),
    );

    final tp = TextPainter(
      text: textSpan,
      maxLines: 1,
      textDirection: TextDirection.rtl,
    )..layout();
    textWidth = tp.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return kItemsColor;
            }
            return Colors.transparent;
          }),
          checkColor: kWhiteColor,
          value: checkBoxValue,
          onChanged: onChanged,
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          side: WidgetStateBorderSide.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return BorderSide.none;
            }
            return BorderSide(
              color: kPrimaryColor,
              width: 2.0,
            );
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          planName,
          style: Styles.textStyle16.copyWith(
            color: checkBoxValue == true
                ? kItemsColor
                : kPrimaryColor,
          ),
        ),
        const Spacer(),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              '$planPriceج.م',
              style: Styles.textStyle16.copyWith(
                color: kHeadlineTextColor,
              ),
            ),
            Positioned(
              bottom: -2,
              right: 0,
              left: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Underline for the price and dot
                  Container(
                    width: textWidth,
                    height: 2,
                    color: kHeadlineTextColor,
                  ),
                  SizedBox(width: 10),
                  // Underline for م
                  Container(
                    width: 12,
                    height: 2,
                    color: kHeadlineTextColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
