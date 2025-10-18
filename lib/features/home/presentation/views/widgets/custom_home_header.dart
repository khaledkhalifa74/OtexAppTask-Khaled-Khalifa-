import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_task/core/utils/app_router.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 64),
            Row(
              children: [
                Text(
                  'أستكشف العروض',
                  style: Styles.textStyle16,
                ),
                const Spacer(),
                InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: (){
                    context.push(AppRouter.kFilteringView);
                  },
                  child: Row(
                    children: [
                      Text(
                        'الكل',
                        style: Styles.textStyle16.copyWith(
                          color: kHintTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward_rounded,
                        weight: 700,
                        color: kHintTextColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
