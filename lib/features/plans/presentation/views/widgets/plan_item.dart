import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_info.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_item_decoration.dart';

class PlanItem extends StatelessWidget {
  final String planName;
  final String planPrice;
  final bool checkBoxValue;
  final void Function(bool?)? onChanged;
  const PlanItem({super.key, required this.planName, required this.checkBoxValue, this.onChanged, required this.planPrice});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 120,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.all(16),
        decoration: customPlanItemDecoration(),
        child: Column(
          children: [
            PlanInfo(
                checkBoxValue: checkBoxValue,
                onChanged: onChanged,
                planName: planName,
                planPrice: planPrice,
            ),
            const Divider(
              height: 32,
              color: kBorderColor,
            ),

          ],
        ),
      ),
    );
  }
}