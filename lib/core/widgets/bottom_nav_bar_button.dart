import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class BottomNavbarButton extends StatelessWidget {
  const BottomNavbarButton({
    super.key,
    required this.text,
    required this.action,
    required this.icon,
    this.isActive,
    this.buttonColor,
  });

  final IconData icon;
  final String text;
  final VoidCallback action;
  final bool? isActive;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24,
            color:
                buttonColor ??
                (isActive == true ? kPrimaryColor : kHintTextColor),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w600,
              color:
                  buttonColor ??
                  (isActive == true ? kPrimaryColor : kHintTextColor),
            ),
          ),
          isActive == true
              ? Container(
                width: 55,
                height: 6,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kPrimaryColor, width: 1),
                  ),
                  color: Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
