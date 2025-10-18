import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/assets.dart';
import 'package:otex_app_task/core/utils/colors.dart';

class ProductFooterIcons extends StatelessWidget {
  const ProductFooterIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Image.asset(
            height: 40,
            width: 40,
            AssetsData.companyBadge,
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: kBorderColor),
              ),
            ),
            child: Icon(
              Icons.add_shopping_cart_outlined,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(width: 8),
          Image.asset(
            height: 32,
            width: 32,
            AssetsData.tmgBadge,
          ),
        ],
      ),
    );
  }
}
