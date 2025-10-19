import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';
import 'package:otex_app_task/core/widgets/custom_text_form_field.dart';

class MonthlyInstallmentsItem extends StatelessWidget {
  const MonthlyInstallmentsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الأقساط الشهرية',
            style: Styles.textStyle16.copyWith(
              color: kHintTextColor,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: CustomTextFormField()),
              const SizedBox(width: 12),
              Expanded(child: CustomTextFormField()),
            ],
          ),
        ],
      ),
    );
  }
}
