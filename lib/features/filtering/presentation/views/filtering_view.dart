import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/filtering_view_body.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: true,
      body: FilteringViewBody(),
    );
  }
}
