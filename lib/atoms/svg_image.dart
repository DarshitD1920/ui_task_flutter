import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetSvgUI extends StatelessWidget {
  final String path;
  final double widthImage;

  const AssetSvgUI({
    Key? key,
    required this.path,
    required this.widthImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = SvgPicture.asset(
      path,
      width: widthImage,
      height: widthImage,
      fit: BoxFit.contain,
    );
    return image;
  }
}
