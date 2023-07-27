import 'package:flutter/material.dart';
import 'package:uitask/atoms/svg_image.dart';
import 'package:uitask/tokens/assets.dart';
import 'package:uitask/tokens/colors.dart';
import 'package:uitask/tokens/spacing.dart';
import 'package:uitask/tokens/strings.dart';

class BottomTextField extends StatelessWidget {
  const BottomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const AssetSvgUI(path: Assets.image, widthImage: 20),
          const SizedBox(
            width: Spacing.spaceMD,
          ),
          SizedBox(
            width: 265,
            child: TextField(
              cursorColor: AppColors.hintColor,
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  hintText: Strings.hintText,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: AppColors.hintColor)),
            ),
          ),
          const Spacer(),
          Text(Strings.send,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppColors.hintColor,
                  ))
        ],
      ),
    );
  }
}
