import 'package:flutter/material.dart';
import 'package:uitask/foundations/colors.dart';
import 'package:uitask/tokens/spacing.dart';

class CardHeader extends StatelessWidget {
  final String title;
  final String body;
  final bool bodytext;
  final bool titletext;

  final double? height;
  const CardHeader(
      {Key? key,
      required this.title,
      required this.body,
      this.height,
      this.bodytext = false,
      this.titletext = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsFoundation.bg, borderRadius: BorderRadius.circular(21)),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          titletext
              ? Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                )
              : const SizedBox.shrink(),
          titletext
              ? const SizedBox(
                  height: Spacing.spaceMD,
                )
              : const SizedBox.shrink(),
          bodytext
              ? Text(
                  body,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: ColorsFoundation.subtitleTextColor),
                  textAlign: TextAlign.start,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
