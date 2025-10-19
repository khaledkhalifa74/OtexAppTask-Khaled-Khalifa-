import 'package:flutter/material.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/image_product.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_footer_icons.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_info.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String productName;
  final String currentPrice;
  final String previousPrice;
  final String salesNumber;
  final bool isFavourite;
  const ProductCard({super.key, required this.productName, required this.currentPrice, required this.previousPrice, required this.salesNumber, required this.isFavourite, required this.image});

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
                image: image,
            ),
            ProductInfo(
              productName: productName,
              currentPrice: '$currentPrice جم',
              previousPrice: '$previousPrice جم',
              salesNumber: '$salesNumber+',
              isFavourite: isFavourite,
            ),
            ProductFooterIcons(),
          ],
        ),
      ),
    );
  }
}
