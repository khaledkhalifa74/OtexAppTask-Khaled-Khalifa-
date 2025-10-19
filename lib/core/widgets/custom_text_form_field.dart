import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  const CustomTextFormField({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styles.textStyle14.copyWith(
            color: kHintTextColor,
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 1,
                style: BorderStyle.solid,
              )),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                  width: 1, color: kBorderColor, style: BorderStyle.solid)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                  width: 1, color: kBorderColor, style: BorderStyle.solid)),
          disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                  width: 1,
                  color: Colors.transparent,
                  style: BorderStyle.solid)),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                  width: 1, color: kRedColor, style: BorderStyle.solid)),
          fillColor: kWhiteColor,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
        ),
      ),
    );
  }
}
