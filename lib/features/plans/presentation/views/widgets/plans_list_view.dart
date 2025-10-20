import 'package:flutter/material.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_cubit.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_item.dart';

class PlansListView extends StatelessWidget {
  const PlansListView({
    super.key,
    required this.cubit,
  });

  final PlansCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cubit.plans.length,
      padding: const EdgeInsets.symmetric(vertical: 12),
      itemBuilder: (context, index) {
        final plan = cubit.plans[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: PlanItem(
            isHealthPin: plan.isHealthPin ?? false,
            numberOfDaysMoveUp: plan.numberOfDaysMoveUp ?? 0,
            numberOfAdValidity: plan.numberOfAdValidity ?? 0,
            isGlobal: plan.isGlobal ?? false,
            isPremium: plan.isPremium ?? false,
            planName: plan.planName,
            planPrice: plan.planPrice.toString(),
            checkBoxValue: plan.isSelected,
            flagText: plan.flagText,
            numberOfViews: plan.numberOfViews,
            onChanged: (newValue) {
              cubit.updatePlanCheckBox(plan.id!, newValue ?? false);
            },
          ),
        );
      },
    );
  }
}
