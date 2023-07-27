import 'package:flutter/cupertino.dart';
import 'package:uitask/tokens/colors.dart';

class DividerHorizontal extends StatelessWidget {
  const DividerHorizontal({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1,
      width: MediaQuery.of(context).size.width,
      color: AppColors.greyColor,
    );
  }
}
