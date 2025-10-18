import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class ContactUsItem extends StatelessWidget {
  const ContactUsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        decoration: ShapeDecoration(
            color: kBodyColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: kBorderColor,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'باقات مخصصة لك',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'تواصل معنا لإختيار الباقة المناسبة لك',
              style: Styles.textStyle12.copyWith(

              ),
            ),
            const SizedBox(height: 4),
            Text(
              'فريق المبيعات',
              style: Styles.textStyle16.copyWith(
                color: kSecondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
