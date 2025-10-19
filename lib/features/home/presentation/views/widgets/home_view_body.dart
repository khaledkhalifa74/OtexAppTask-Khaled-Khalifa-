import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:otex_app_task/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/custom_home_chip_choice.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/free_shipping_item.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/product_category_list_view.dart';
import 'package:otex_app_task/features/home/presentation/views/widgets/products_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (BuildContext context, state) {
        final cubit = HomeCubit.get(context);
        return SingleChildScrollView(
          child: Column(
            children: [
              const CustomHomeHeader(),
              CustomHomeChipChoice(
                categories: cubit.categories,
                tag: cubit.categoryTag,
                onChanged: (newValue) {
                  cubit.updateCategory(newValue);
                },
              ),
              const SizedBox(height: 32),
              const ProductCategoryListView(),
              const SizedBox(height: 32),
              cubit.isFreeShipping == true
                  ? Column(
                children: [
                  const FreeShippingItem(),
                  const SizedBox(height: 20),
                ],
              )
                  : const SizedBox(),

              const ProductsGridView(),
            ],
          ),
        );
      },
    );
  }
}