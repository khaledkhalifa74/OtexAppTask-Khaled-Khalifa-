import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/widgets/custom_button.dart';
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
  int firstChipTag = 0;
  List<String> types = [
    'الكل',
    'تاون هاوس',
    'فيلا منفصلة',
    'شقة'
  ];

  int secondChipTag = 0;
  List<String> typesOfRooms = [
    'الكل',
    'غرفة',
    'غرفتين',
    '3 غرف',
    '4 غرف',
    '5 غرف+'
  ];

  int paymentWatTag = 0;
  List<String> paymentWays = [
    'أى',
    'تقسيط',
    'كاش',
  ];

  int statusTag = 0;
  List<String> statusTypes = [
    'أى',
    'جاهز',
    'قيد الإنشاء',
  ];
  @override
  Widget build(BuildContext context) {
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
                types: types,
                tag: firstChipTag,
                onChanged: (newValue) {
                  setState(() {
                    firstChipTag = newValue;
                  });
                },
                text: 'النوع',
      
              ),
              const SizedBox(height: 20),
              CustomFilteringChipChoice(
                types: typesOfRooms,
                tag: secondChipTag,
                onChanged: (newValue) {
                  setState(() {
                    secondChipTag = newValue;
                  });
                },
                text: 'عدد الغرف',
      
              ),
              const MinMaxPriceItem(),
              CustomFilteringChipChoice(
                types: paymentWays,
                tag: paymentWatTag,
                onChanged: (newValue) {
                  setState(() {
                    paymentWatTag = newValue;
                  });
                },
                text: 'طريقة الدفع',

              ),
              const SizedBox(height: 20),
              CustomFilteringChipChoice(
                types: statusTypes,
                tag: statusTag,
                onChanged: (newValue) {
                  setState(() {
                    statusTag = newValue;
                  });
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
  }
}
