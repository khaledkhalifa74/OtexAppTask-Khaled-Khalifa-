import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/core/widgets/custom_button.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_cubit.dart';
import 'package:otex_app_task/features/plans/presentation/manager/plans_cubit/plans_state.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/contact_us_item.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/custom_plans_header.dart';
import 'package:otex_app_task/features/plans/presentation/views/widgets/plans_list_view.dart';

class PlansSelectedViewBody extends StatefulWidget {
  const PlansSelectedViewBody({super.key});

  @override
  State<PlansSelectedViewBody> createState() => _PlansSelectedViewBodyState();
}

class _PlansSelectedViewBodyState extends State<PlansSelectedViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlansCubit,PlansState>(
      builder: (BuildContext context, state) {
        final cubit = PlansCubit.get(context);
        return Padding(
          padding: const EdgeInsets.only(
            top: 32,
            bottom: 55,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomPlansHeader(),
              const SizedBox(height: 32),
              PlansListView(cubit: cubit),
              const ContactUsItem(),
              const Spacer(),
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