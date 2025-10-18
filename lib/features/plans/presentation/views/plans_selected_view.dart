import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plans_selected_view_body.dart';

class PlansSelectedView extends StatelessWidget {
  const PlansSelectedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      resizeToAvoidBottomInset: true,
      body: PlansSelectedViewBody(),
    );
  }
}
