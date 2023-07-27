import 'package:flutter/material.dart';
import 'package:uitask/foundations/colors.dart';
import 'package:uitask/foundations/typo.dart';

final ligthTheme = ThemeData(
    primaryColor: ColorsFoundation.bg,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w500,
          fontSize: TypographyFoundation.fontSizeH1,
          color: ColorsFoundation.subHeadTextColor,
        ),
        displayMedium: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w500,
          fontSize: TypographyFoundation.fontSizeH2,
          color: ColorsFoundation.subtitleTextColor,
        ),
        displaySmall: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w400,
          fontSize: TypographyFoundation.fontSizeH2,
          color: ColorsFoundation.headerTextColor,
        ),
        headlineMedium: TextStyle(
          fontFamily: TypographyFoundation.familyBody,
          fontWeight: FontWeight.w500,
          fontSize: TypographyFoundation.fontSizeH2,
          color: ColorsFoundation.tagTextColor,
        ),
        headlineSmall: TextStyle(
          fontFamily: TypographyFoundation.familyBody,
          fontWeight: FontWeight.w400,
          fontSize: TypographyFoundation.fontSizeH2,
          color: ColorsFoundation.subHeadTextColor,
        ),
        titleLarge: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w700,
          fontSize: TypographyFoundation.fontSizeH4,
          color: ColorsFoundation.headerTextColor,
        ),
        titleMedium: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w700,
          fontSize: TypographyFoundation.fontSizeH3,
          color: ColorsFoundation.headerTextColor,
        ),
        titleSmall: TextStyle(
          fontFamily: TypographyFoundation.familyHeadings,
          fontWeight: FontWeight.w500,
          fontSize: TypographyFoundation.fontSizeH2,
          color: ColorsFoundation.subHeadTextColor,
        )),
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: ColorsFoundation.colorButtonPrimaryMat)
        .copyWith(background: ColorsFoundation.bg));
