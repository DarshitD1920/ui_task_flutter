import 'package:flutter/material.dart';
import 'package:uitask/atoms/asset_image.dart';
import 'package:uitask/atoms/svg_image.dart';
import 'package:uitask/foundations/colors.dart';
import 'package:uitask/organisms/button.dart';
import 'package:uitask/tokens/assets.dart';
import 'package:uitask/tokens/spacing.dart';
import 'package:uitask/tokens/strings.dart';

class CardHeaderTile extends StatelessWidget {
  final String path;
  final String title;
  final String subHeader;
  final String subTitle;
  final String weight;
  final double? height;
  final bool text;
  final bool subheadertext;
  const CardHeaderTile(
      {Key? key,
      required this.path,
      required this.title,
      required this.subHeader,
      required this.subTitle,
      this.text = false,
      this.subheadertext = false,
      required this.weight,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 160,
      decoration: BoxDecoration(
          color: ColorsFoundation.bg, borderRadius: BorderRadius.circular(21)),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AssetImageUI(
            path: path,
            widthImage: 34,
          ),
          const SizedBox(
            width: Spacing.spaceSM,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: Spacing.spaceXXS,
                  ),
                  const AssetSvgUI(
                    path: Assets.verify,
                    widthImage: 14,
                  ),
                  const SizedBox(
                    width: Spacing.spaceXXS,
                  ),
                  Text(
                    subHeader,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              subheadertext
                  ? Row(
                      children: [
                        Text(subTitle,
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(
                          width: Spacing.spaceXXS,
                        ),
                        Center(
                          child: Container(
                              height: 2,
                              width: 2,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorsFoundation.subHeadTextColor)),
                        ),
                        const SizedBox(
                          width: Spacing.spaceXXS,
                        ),
                        Text(weight,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const Spacer(),
          text
              ? const AssetSvgUI(path: Assets.menu, widthImage: 3)
              : Button(onTap: () {}, title: Strings.button)
        ],
      ),
    );
  }
}
