import 'package:flutter/material.dart';
import 'package:uitask/foundations/colors.dart';
import 'package:uitask/tokens/colors.dart';

class TagListTile extends StatelessWidget {
  const TagListTile({super.key, required this.data});
  final List<String> data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 0,
        spacing: 8,
        children: List.generate(
            data.length,
            (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    height: 22,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(90)),
                    child: Text(
                      '#${data[index]}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: ColorsFoundation.tagTextColor),
                    ),
                  ),
                )),
      ),
    );
  }
}
