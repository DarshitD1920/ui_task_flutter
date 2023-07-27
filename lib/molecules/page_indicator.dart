import 'package:flutter/material.dart';
import 'package:uitask/foundations/colors.dart';

Widget indicator(bool isActive) {
  return SizedBox(
    height: 10,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: isActive ? 10 : 8.0,
      width: isActive ? 12 : 8.0,
      decoration: BoxDecoration(
        boxShadow: [
          isActive
              ? BoxShadow(
                  color: ColorsFoundation.ligthTextAppColors.withOpacity(0.72),
                  blurRadius: 4.0,
                  spreadRadius: 1.0,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                )
              : const BoxShadow(
                  color: Colors.transparent,
                )
        ],
        shape: BoxShape.circle,
        color: isActive
            ? ColorsFoundation.ligthTextAppColors
            : const Color(0XFFEAEAEA),
      ),
    ),
  );
}
