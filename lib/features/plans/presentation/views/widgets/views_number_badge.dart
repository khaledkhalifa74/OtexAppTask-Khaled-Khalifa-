import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class ViewsNumberBadge extends StatelessWidget {
  const ViewsNumberBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 95,
          height: 60,
          decoration: BoxDecoration(
            color: kGreenTintColor,
            border: Border(
              top: BorderSide(
                color: kGreenColor,
                width: 2,
              ),
              right: BorderSide(
                color: kGreenColor,
                width: 2,
              ),
              left: BorderSide(
                color: kGreenColor,
                width: 2,
              ),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            '24',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: kGreenColor
            ),
          ),
        ),
        const SizedBox(height: 4),
        Column(
          children:  [
            Text(
              'ضعف عدد',
              style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 1,
              color: kPrimaryColor,
              indent: 50,
              endIndent: 50,
              height: 0,
            ),
            const SizedBox(height: 4),
            Text(
              'المشاهدات',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 1,
              color: kPrimaryColor,
              indent: 45,
              endIndent: 45,
              height: 0,
            ),
          ],
        ),
      ],
    );
  }
}
