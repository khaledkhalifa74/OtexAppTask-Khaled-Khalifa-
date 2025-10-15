import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class ProductCategoryItem extends StatelessWidget {
  final String image;
  final String title;
  const ProductCategoryItem({
    super.key, required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 73.w,
          height: 53.h,
          child: Stack(
            children: [
              Container(
                width: 73.w,
                height: 53.h,
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Center(
                child: Image.asset(
                  image,
                  height: 45,
                  width: 45,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
