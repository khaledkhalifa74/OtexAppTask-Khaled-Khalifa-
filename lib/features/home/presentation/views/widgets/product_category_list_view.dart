import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_category_item.dart';

class ProductCategoryListView extends StatelessWidget {
  final HomeCubit homeCubit;
  const ProductCategoryListView({
    super.key, required this.homeCubit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: Padding(
        padding: const EdgeInsets.only(right: 16,left: 4),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(
                left: 12,
              ),
              child: ProductCategoryItem(
                image: homeCubit.productsCategory[index].imageUrl!,
                title: homeCubit.productsCategory[index].name,
              ),
            );
          },
        ),
      ),
    );
  }
}