import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class FreeShippingItem extends StatelessWidget {
  const FreeShippingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kHeadlineTintColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            Icon(
              Icons.check_rounded,
              color: kGreenColor,
              weight: 80,
            ),
            const SizedBox(width: 4),
            Text(
              'شحن مجاني',
              style: Styles.textStyle14.copyWith(
                color: kGreenColor,
              ),
            ),
            const Spacer(),
            Text(
              'لأى عرض تطلبه دلوقتى !',
              style: Styles.textStyle12,
            ),
          ],
        ),
      ),
    );
  }
}