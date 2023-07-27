import 'package:flutter/material.dart';

class AssetImageUI extends StatelessWidget {
  final String path;
  final double widthImage;

  const AssetImageUI({
    Key? key,
    required this.path,
    required this.widthImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      path,
      width: widthImage,
      height: widthImage,
      fit: BoxFit.contain,
    );
    return image;
  }
}
