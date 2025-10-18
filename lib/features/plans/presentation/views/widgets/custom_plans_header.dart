import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomPlansHeader extends StatelessWidget {
  const CustomPlansHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    context.pop();
                  },
                  child: SizedBox(
                    width: 20,
                    child: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: kPrimaryColor,
                      size: 28,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'أختر الباقات اللى تناسبك',
                  style: Styles.textStyle24,
                ),
              ],
            ),
            Text(
              'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
              style: Styles.textStyle14.copyWith(
                color: kHintTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
