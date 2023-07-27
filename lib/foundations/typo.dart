import 'package:flutter/material.dart' as material;
import 'package:uitask/tokens/typography.dart';

class TypographyFoundation {
  TypographyFoundation._();

  //fonts
  static const String familyHeadings = Typography.familyNotoSans;
  static const String familyBody = Typography.familyRoboto;

  //sizes
  static const double fontSizeH1 = Typography.sizeXXS;
  static const double fontSizeH2 = Typography.sizeXS;
  static const double fontSizeH3 = Typography.sizeSM;
  static const double fontSizeH4 = Typography.sizeSL;

  // Text Style
  static const material.TextStyle buttonStyle = material.TextStyle();
}
