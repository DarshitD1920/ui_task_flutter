import 'package:flutter/material.dart';

import '../foundations/sizes.dart';

class Separeted extends StatelessWidget {
  final double nSepareted;
  const Separeted({Key? key, required this.nSepareted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSepareted * SizesFoundation.baseSepareted,
    );
  }
}
