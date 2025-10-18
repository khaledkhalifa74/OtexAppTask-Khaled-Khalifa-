import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';

ShapeDecoration customPlanItemDecoration() {
  return ShapeDecoration(
      color: kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: kBorderColor,
        ),
      ),
      shadows: customShadows()
  );
}
List<BoxShadow> customShadows() {
  return [
    BoxShadow(
      color: kShadowColor.withValues(alpha: 0.1),
      offset: Offset(0, 3),
      blurRadius: 8,
      spreadRadius: 0,
    )
  ];
}