import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';

class ImageProduct extends StatelessWidget {
  final String image;
  const ImageProduct({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.width * 0.6;
    return Stack(
      children: [
        Container(
          height: imageHeight,
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
            image,
            height: imageHeight,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
