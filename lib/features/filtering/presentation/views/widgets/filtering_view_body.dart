import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/widgets/custom_button.dart';
import 'package:otex_app_task/features/filtering/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app_task/features/filtering/presentation/manager/filtering_cubit/filtering_state.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/custom_filtering_chip_choice.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/category_item.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/custom_filtering_header.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/location_item.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/min_max_price_item.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/monthly_installments_item.dart';

class FilteringViewBody extends StatefulWidget {
  const FilteringViewBody({super.key});

  @override
  State<FilteringViewBody> createState() => _FilteringViewBodyState();
}

class _FilteringViewBodyState extends State<FilteringViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilteringCubit,FilteringState>(
      builder: (BuildContext context, state) {
        final cubit = FilteringCubit.get(context);
        return SingleChildScrollView(
          child: Padding(
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
                  CustomFilteringChipChoice(
                    types: cubit.types,
                    tag: cubit.typeChipTag,
                    onChanged: (newValue) {
                      cubit.updateTypeValue(newValue);
                    },
                    text: 'النوع',

                  ),
                  const SizedBox(height: 20),
                  CustomFilteringChipChoice(
                    types: cubit.typesOfRooms,
                    tag: cubit.secondChipTag,
                    onChanged: (newValue) {
                      cubit.updateSecondChipValue(newValue);
                    },
                    text: 'عدد الغرف',

                  ),
                  const MinMaxPriceItem(),
                  CustomFilteringChipChoice(
                    types: cubit.paymentWays,
                    tag: cubit.paymentWatTag,
                    onChanged: (newValue) {
                      cubit.updatePaymentWayValue(newValue);
                    },
                    text: 'طريقة الدفع',

                  ),
                  const SizedBox(height: 20),
                  CustomFilteringChipChoice(
                    types: cubit.statusTypes,
                    tag: cubit.statusTag,
                    onChanged: (newValue) {
                      cubit.updateStatusValue(newValue);
                    },
                    text: 'حالة العقار',

                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    text: 'شاهد 10,000+ نتائج',
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
