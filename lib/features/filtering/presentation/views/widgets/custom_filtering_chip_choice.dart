import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:otex_app_task/core/utils/colors.dart';
import 'package:otex_app_task/core/utils/styles.dart';

class CustomFilteringChipChoice extends StatelessWidget {
  final List<String> types;
  final int tag;
  final void Function(int) onChanged;
  final String text;
  const CustomFilteringChipChoice({super.key, required this.types, required this.tag, required this.onChanged, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: kHintTextColor,
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: ChipsChoice<int>.single(
              padding: EdgeInsets.zero,
              value: tag,
              onChanged: onChanged,
              wrapped: true,
              choiceItems: C2Choice.listFrom<int, String>(
                source: types,
                value: (i, v) => i,
                label: (i, v) => v,
              ),
              choiceBuilder: (item, i) {
                final selected = item.selected;
                return GestureDetector(
                  onTap: () => item.select!(true),
                  child: Container(
                    margin: EdgeInsets.only(
                      left:  6,
                    ),
                    decoration: BoxDecoration(
                      color: selected ? kSecondaryTintColor : kWhiteColor,
                      border: Border.all(
                        color: selected ? kSecondaryColor : kBorderColor,
                        width: selected ? 2 : 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      item.label,
                      style: Styles.textStyle16.copyWith(
                        color: selected ? kSecondaryColor : kHintTextColor,
                      ),
                    ),
                  ),
                );
              },

            ),
          ),
        ],
      ),
    );
  }
}
