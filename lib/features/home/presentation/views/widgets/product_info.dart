import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class ProductInfo extends StatelessWidget {
  final String productName;
  final String currentPrice;
  final String previousPrice;
  final String salesNumber;
  final bool isFavourite;
  const ProductInfo({super.key, required this.productName, required this.currentPrice, required this.previousPrice, required this.salesNumber, required this.isFavourite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with icon
          Row(
            children: [
              Expanded(
                child: Text(
                  productName,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Image.asset(
                height: 20,
                width: 20,
                AssetsData.offerIcon,
              ),
            ],
          ),

          const SizedBox(height: 4),

          // Price and discount
          Row(
            children: [
              Text(
                currentPrice,
                style: const TextStyle(
                  fontSize: 13,
                  color: kHeadlineTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              Stack(
                children: [
                  Text(
                    previousPrice,
                    style: Styles.textStyle12.copyWith(
                      color: kHintTextColor,
                    ),
                  ),
                  Positioned.fill(
                    bottom: 4,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 1,
                        width: 40,
                        color: kHintTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                isFavourite == true ? Icons.favorite : Icons.favorite_border,
                weight: 40,
                color: kPrimaryColor,
              ),
              const SizedBox(width: 4),
            ],
          ),

          const SizedBox(height: 4),

          // Sales info
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.local_fire_department_outlined,
                size: 16,
                color: kHintTextColor,
              ),
              SizedBox(width: 2),
              Text(
                'تم بيع $salesNumber',
                style: TextStyle(
                  fontSize: 11,
                  color: kHintTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
