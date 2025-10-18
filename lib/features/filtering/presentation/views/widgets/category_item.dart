import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الفئة',
            style: Styles.textStyle16.copyWith(
              color: kHintTextColor,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsData.realStateIcon),
              const SizedBox(width: 16),
              Column(
                children: [
                  Text(
                    'عقارات',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'فلل البيع',
                    style: Styles.textStyle12.copyWith(
                        color: kHintTextColor
                    ),
                  ),

                ],
              ),
              const Spacer(),
              Text(
                'تغيير',
                style: Styles.textStyle14.copyWith(
                  color: kItemsColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
