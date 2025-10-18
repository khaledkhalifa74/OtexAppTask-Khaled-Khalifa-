import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color? backgroundColor;
  final Widget? icon;
const CustomButton({super.key, required this.text, required this.onPressed, this.backgroundColor, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(backgroundColor ?? kSecondaryColor)
          ),
            onPressed: (){},
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: Styles.textStyle16.copyWith(
                        color: kWhiteColor,
                      ),
                    ),
                    const SizedBox(width: 4),
                    icon ?? Icon(
                      Icons.arrow_forward_rounded,
                      color: kWhiteColor,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
BoxDecoration customButtonDecoration() {
  return BoxDecoration(
    border: Border(
        top: BorderSide(color: kBorderColor)
    ),
  );
}

