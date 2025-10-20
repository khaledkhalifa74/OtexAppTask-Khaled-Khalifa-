import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/custom_plan_flag.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/custom_plan_row.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_info.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plan_item_decoration.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/views_number_badge.dart';

class PlanItem extends StatelessWidget {
  final String planName;
  final String planPrice;
  final bool checkBoxValue;
  final void Function(bool?)? onChanged;
  final int? numberOfDaysMoveUp;
  final int? numberOfAdValidity;
  final bool? isGlobal;
  final bool? isHealthPin;
  final bool? isPremium;
  final String? flagText;
  final int? numberOfViews;
  const PlanItem({super.key, required this.planName, required this.checkBoxValue, this.onChanged, required this.planPrice, this.numberOfDaysMoveUp, this.numberOfAdValidity = 0, this.isGlobal, this.isHealthPin, this.isPremium, this.flagText, this.numberOfViews});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
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
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          // Ad validity
                          CustomPlanRow(
                              icon: AssetsData.acuteIcon,
                              title: 'صلاحية الإعلان $numberOfAdValidity يوم',
                            size: 18,
                          ),
                          // days of move up
                          if(numberOfDaysMoveUp != null && numberOfDaysMoveUp != 0)
                          CustomPlanRow(
                            icon: AssetsData.rocketIcon,
                            title: 'رفع لأعلى القائمة كل $numberOfDaysMoveUp يوم',
                            size: 24,
                          ),
                          // global
                          if(isGlobal == true)
                          CustomPlanRow(
                            icon: AssetsData.globalIcon,
                            title: 'ظهور فى كل محافظات مصر',
                            size: 24,
                          ),
                          // premium
                          if(isPremium == true)
                          CustomPlanRow(
                            icon: AssetsData.premiumIcon,
                            title: 'أعلان مميز',
                            size: 24,
                          ),
                          // health pin
                          if(isHealthPin == true)
                          CustomPlanRowWithAddition(
                            icon: AssetsData.premiumIcon,
                            title: 'تثبيت فى مقاول صحى',
                            additionalTitle: '( خلال ال48 ساعة القادمة )',
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    if(numberOfViews != null)
                    ViewsNumberBadge(numberOfViews: numberOfViews.toString())
                  ],
                ),
              ],
            ),
          ),
          if(flagText != null && flagText != '')
          Positioned(
            top: -24,
            right: 16,
            child: CustomPlanFlag(
              text: flagText!,
            ),
          ),
        ],
      ),
    );
  }
}
