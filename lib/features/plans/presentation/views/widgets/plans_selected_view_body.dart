import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/widgets/custom_button.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/custom_plans_header.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_item.dart';

class PlansSelectedViewBody extends StatefulWidget {
  const PlansSelectedViewBody({super.key});

  @override
  State<PlansSelectedViewBody> createState() => _PlansSelectedViewBodyState();
}

class _PlansSelectedViewBodyState extends State<PlansSelectedViewBody> {
  bool planCheckBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomPlansHeader(),
          const SizedBox(height: 32),
          PlanItem(
            planName: 'بلس',
            checkBoxValue: planCheckBoxValue,
            onChanged: (newValue){
              setState(() {
                planCheckBoxValue = newValue!;
              });
            }, planPrice: '3,000',
          ),
          const SizedBox(height: 32),
          Container(
            padding: EdgeInsets.only(top: 12),
            decoration: customButtonDecoration(),
            child: CustomButton(
              text: 'التالي',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration customButtonDecoration() {
    return BoxDecoration(
            border: Border(
              top: BorderSide(color: kBorderColor)
            ),
          );
  }
}
