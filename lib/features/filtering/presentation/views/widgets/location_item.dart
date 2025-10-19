import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
      child: Row(
        children: [
          SvgPicture.asset(
              AssetsData.locationIcon,
            colorFilter: ColorFilter.mode(
              kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الموقع',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'مصر',
                style: Styles.textStyle12.copyWith(
                    color: kHintTextColor
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 20,
            child: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: kPrimaryColor,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
