import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/features/filtering/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/filtering_view_body.dart';

class FilteringView extends StatelessWidget {
  const FilteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FilteringCubit(),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        resizeToAvoidBottomInset: true,
        body: FilteringViewBody(),
      ),
    );
  }
}
