import 'package:flutter/material.dart';
import 'package:uitask/atoms/svg_image.dart';
import 'package:uitask/molecules/like_widget.dart';
import 'package:uitask/tokens/assets.dart';
import 'package:uitask/tokens/spacing.dart';

class LikeTrey extends StatelessWidget {
  final bool liketext;
  final bool isComment;
  const LikeTrey({this.liketext = false, this.isComment = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(children: [
        const TreyWidget(
            isText: true, title: '5', isImage: true, image: Assets.like),
        const SizedBox(
          width: Spacing.spaceSM,
        ),
        isComment
            ? const TreyWidget(
                isText: true, title: '5', isImage: false, image: Assets.comment)
            : const SizedBox.shrink(),
        const SizedBox(
          width: Spacing.spaceSM,
        ),
        liketext
            ? const TreyWidget(
                isText: false, isImage: false, image: Assets.save)
            : const SizedBox.shrink(),
        const SizedBox(
          width: Spacing.spaceSM,
        ),
        liketext
            ? const AssetSvgUI(path: Assets.menu, widthImage: 3)
            : const SizedBox.shrink()
      ]),
    );
  }
}
