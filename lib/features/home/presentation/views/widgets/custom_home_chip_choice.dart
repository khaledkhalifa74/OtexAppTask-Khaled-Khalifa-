import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomHomeChipChoice extends StatelessWidget {
  final List<String> categories;
  final int tag;
  final void Function(int) onChanged;
  const CustomHomeChipChoice({super.key, required this.categories, required this.tag, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
        left: 8,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Align(
          alignment: AlignmentDirectional.topStart,
          child: ChipsChoice<int>.single(
            padding: EdgeInsets.zero,
            value: tag,
            onChanged: onChanged,
            choiceItems: C2Choice.listFrom<int, String>(
              source: categories,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
            choiceBuilder: (item, i) {
              final selected = item.selected;
              return GestureDetector(
                onTap: () => item.select!(true),
                child: Container(
                  margin: EdgeInsets.only(
                    left:  8 ,
                  ),
                  decoration: BoxDecoration(
                    color: selected ? kHeadlineTintColor : kWhiteColor,
                    border: Border.all(
                      color: selected ? kBorderColor : kBorderColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    item.label,
                    style: Styles.textStyle16.copyWith(
                      color: selected ? kHeadlineTextColor : kHintTextColor,
                    ),
                  ),
                ),
              );
            },

          ),
        ),
      ),
    );
  }
}
