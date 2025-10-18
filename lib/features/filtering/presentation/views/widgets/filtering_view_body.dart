import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/category_item.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/custom_filtering_header.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/location_item.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/monthly_installments_item.dart';

class FilteringViewBody extends StatefulWidget {
  const FilteringViewBody({super.key});

  @override
  State<FilteringViewBody> createState() => _FilteringViewBodyState();
}

class _FilteringViewBodyState extends State<FilteringViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 55,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomFilteringHeader(),
            const SizedBox(height: 32),
            const CategoryItem(),
            const SizedBox(height: 32),
            const Divider(
              color: kBorderColor,
              height: 0,
            ),
            const LocationItem(),
            const Divider(
              color: kBorderColor,
              height: 0,
            ),
            const MonthlyInstallmentsItem(),
          ],
        ),
      ),
    );
  }
}
