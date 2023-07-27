import 'package:flutter/material.dart';

class NetworkImageUI extends StatelessWidget {
  final String url;
  final double widthImage;
  final double heightImage;

  const NetworkImageUI(
      {Key? key,
      required this.url,
      required this.widthImage,
      required this.heightImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.network(
      url,
      width: widthImage,
      fit: BoxFit.fitWidth,
      height: heightImage,
    );
    return image;
  }
}
