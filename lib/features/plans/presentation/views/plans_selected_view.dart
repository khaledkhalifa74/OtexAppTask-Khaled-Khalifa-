import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/plans/data/repos/plans_repo_impl.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_cubit.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plans_selected_view_body.dart';

class PlansSelectedView extends StatelessWidget {
  const PlansSelectedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PlansCubit(PlansRepoImpl())..saveAndLoadPlans(),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        resizeToAvoidBottomInset: true,
        body: PlansSelectedViewBody(),
      ),
    );
  }
}
