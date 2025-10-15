import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/custom_home_chip_choice.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/free_shipping_item.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_card.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_category_list_view.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/products_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int tag = 0;
  List<String> categories= [
    'كل العروض',
    'ملابس',
    'أكسسوارات',
    'الكترونيات'
  ];
  bool isFreeShipping = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHomeHeader(),
          CustomHomeChipChoice(
            categories: categories,
            tag: tag,
            onChanged:     (val) {
              setState(() {
                tag = val;
              });
            },
          ),
          const SizedBox(height: 32),
          const ProductCategoryListView(),
          const SizedBox(height: 32),
          isFreeShipping == true
              ? Column(
            children: [
              const FreeShippingItem(),
              const SizedBox(height: 20),
            ],
          )
              : const SizedBox(),

          const ProductsGridView(),
        ],
      ),
    );
  }
}