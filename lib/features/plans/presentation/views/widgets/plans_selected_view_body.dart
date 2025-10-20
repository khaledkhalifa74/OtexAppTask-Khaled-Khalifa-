import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/widgets/custom_button.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_cubit.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_state.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/contact_us_item.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/custom_plans_header.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plans_list_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PlansSelectedViewBody extends StatefulWidget {
  const PlansSelectedViewBody({super.key});

  @override
  State<PlansSelectedViewBody> createState() => _PlansSelectedViewBodyState();
}

class _PlansSelectedViewBodyState extends State<PlansSelectedViewBody> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlansCubit,PlansState>(
      listener: (BuildContext context, state){
        if(state is StartSaveDataState || state is StartLoadDataFromDBState){
          isLoading = true;
        }else{
          isLoading = false;
        }
      },
      builder: (context, state) {
        final cubit = PlansCubit.get(context);
        return Skeletonizer(
          textBoneBorderRadius: TextBoneBorderRadius(BorderRadius.circular(4)),
          enabled: isLoading,
          effect: ShimmerEffect(
            baseColor: kBorderColor,
            highlightColor: kGreyColor,
            duration: const Duration(seconds: 2),
          ),
          containersColor: kWhiteColor,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 55),
            children: [
              const CustomPlansHeader(),
              const SizedBox(height: 32),
              PlansListView(cubit: cubit),
              const ContactUsItem(),
              Container(
                padding: EdgeInsets.only(top: 12),
                decoration: customButtonDecoration(),
                child: CustomButton(
                  text: 'التالي',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}