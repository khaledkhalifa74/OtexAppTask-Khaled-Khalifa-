import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/image_product.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_footer_icons.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_info.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageProduct(
                image: AssetsData.shirtItem,
            ),
            ProductInfo(
              productName: 'جاكيت من الصوف مصنوع من اجود انواع الصوف المصري',
              currentPrice: '3,000 جم',
              previousPrice: '5,000 جم',
              salesNumber: '3.3k+',
            ),
            ProductFooterIcons(),
          ],
        ),
      ),
    );
  }
}
