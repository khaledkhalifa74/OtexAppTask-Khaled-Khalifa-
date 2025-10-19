  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:otex_app_task/core/utils/colors.dart';
  import 'package:otex_app_task/core/widgets/custom_bottom_nav_bar.dart';
import 'package:otex_app_task/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
  import 'package:otex_app_task/features/home/presentation/views/widgets/home_view_body.dart';

  class HomeView extends StatelessWidget {
    const HomeView({super.key});

    @override
    Widget build(BuildContext context) {
      return BlocProvider(
        create: (BuildContext context) => HomeCubit(HomeRepoImpl())..saveAndLoadHomeData(),
        child: Scaffold(
          backgroundColor: kWhiteColor,
          bottomNavigationBar: CustomBottomNavBar(activeIndex: 0),
          resizeToAvoidBottomInset: true,
          body: HomeViewBody(),
        ),
      );
    }
  }
