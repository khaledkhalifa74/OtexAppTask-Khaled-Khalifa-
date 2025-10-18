import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomFilteringHeader extends StatelessWidget {
  const CustomFilteringHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          const SizedBox(height: 24),
          Row(
            children: [
              InkWell(
                onTap: (){
                  context.pop();
                },
                borderRadius: BorderRadius.circular(4),
                child: Icon(
                  Icons.close_rounded,
                  color: kPrimaryColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'فلترة',
                style: Styles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  context.pop();
                },
                borderRadius: BorderRadius.circular(4),
                child: Text(
                  'رجوع للأفتراضى',
                  style: Styles.textStyle16.copyWith(
                      color: kSecondaryColor
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
