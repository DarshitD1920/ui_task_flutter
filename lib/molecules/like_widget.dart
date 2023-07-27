import 'package:flutter/material.dart';
import 'package:uitask/atoms/asset_image.dart';
import 'package:uitask/tokens/spacing.dart';

import '../atoms/svg_image.dart';

class TreyWidget extends StatelessWidget {
  const TreyWidget(
      {super.key,
      required this.isText,
      required this.isImage,
      this.image,
      this.title});
  final bool isText;
  final bool isImage;
  final String? image;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isImage
            ? AssetImageUI(path: image!, widthImage: 20)
            : AssetSvgUI(path: image!, widthImage: 20),
        const SizedBox(
          width: Spacing.spaceXXS,
        ),
        isText
            ? Text(
                title!,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
