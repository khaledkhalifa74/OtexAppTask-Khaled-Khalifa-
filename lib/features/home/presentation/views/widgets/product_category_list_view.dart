import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_category_item.dart';

class ProductCategoryListView extends StatelessWidget {
  const ProductCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                image: AssetsData.watchItem,
                title: 'ساعات',
              ),
            );
          },
        ),
      ),
    );
  }
}