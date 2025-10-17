import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomPlanRow extends StatelessWidget {
  final String icon;
  final String title;
  final double size;
  const CustomPlanRow({super.key, required this.icon, required this.title, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: size,
            width: size,
            colorFilter: ColorFilter.mode(
              kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPlanRowWithAddition extends StatelessWidget {
  final String icon;
  final String title;
  final String additionalTitle;
  final double size;
  const CustomPlanRowWithAddition({super.key, required this.icon, required this.title, required this.additionalTitle, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 8
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: size,
            width: size,
            colorFilter: ColorFilter.mode(
              kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                additionalTitle,
                style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.bold,
                  color: kRedColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

