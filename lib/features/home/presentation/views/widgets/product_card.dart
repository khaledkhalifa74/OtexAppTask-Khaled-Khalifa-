import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Stack(
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: kGreyColor, // grey overlay
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset(
                   AssetsData.shirtItem,
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            // Product Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title with icon
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'جاكيت من الصوف مصنوع من اجود انواع الصوف المصري',
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
                        '3,000 جم',
                        style: const TextStyle(
                          fontSize: 13,
                          color: kHeadlineTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '5,000 جم',
                        style: TextStyle(
                          fontSize: 12,
                          color: kHintTextColor,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.favorite_border, weight: 40,color: kPrimaryColor,),
                      const SizedBox(width: 4),
                    ],
                  ),

                  const SizedBox(height: 4),

                  // Sales info
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                          Icons.local_fire_department_outlined,
                          size: 16,
                          color: kHintTextColor,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'تم بيع 3.3k+',
                        style: TextStyle(
                          fontSize: 11,
                          color: kHintTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.location_city_outlined, size: 22),
                Icon(Icons.shopping_cart_outlined, size: 22),
                Icon(Icons.check_circle, color: Colors.blue, size: 22),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
