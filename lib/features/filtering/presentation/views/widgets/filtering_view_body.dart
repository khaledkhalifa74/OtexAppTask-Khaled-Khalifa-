import 'package:flutter/material.dart';
import 'package:otex_app_task/features/filtering/presentation/views/widgets/custom_filtering_header.dart';

class FilteringViewBody extends StatefulWidget {
  const FilteringViewBody({super.key});

  @override
  State<FilteringViewBody> createState() => _FilteringViewBodyState();
}

class _FilteringViewBodyState extends State<FilteringViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        bottom: 55,
        right: 16,
        left: 16
      ),
      child: Column(
        children: [
          const CustomFilteringHeader(),
        ],
      ),
    );
  }
}
