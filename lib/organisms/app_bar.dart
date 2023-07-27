import 'package:flutter/material.dart';
import 'package:uitask/atoms/svg_image.dart';
import 'package:uitask/foundations/colors.dart';
import 'package:uitask/tokens/assets.dart';
import 'package:uitask/tokens/strings.dart';

AppBar detailAppBar(BuildContext context) => AppBar(
      backgroundColor: ColorsFoundation.bg,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorsFoundation.subtitleTextColor,
          )),
      centerTitle: true,
      title: Text(Strings.title, style: Theme.of(context).textTheme.titleLarge),
      actions: const [
        AssetSvgUI(path: Assets.notification, widthImage: 24),
        SizedBox(
          width: 16,
        )
      ],
    );
