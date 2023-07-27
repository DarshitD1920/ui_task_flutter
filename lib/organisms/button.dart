import 'package:flutter/material.dart';

import '../foundations/colors.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap, required this.title});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 24,
        width: 58,
        decoration: BoxDecoration(
            color: ColorsFoundation.colorButtonPrimary,
            borderRadius: BorderRadius.circular(90)),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: ColorsFoundation.ligthTextAppColors),
        )),
      ),
    );
  }
}
