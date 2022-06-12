import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';

enum FontStyles {
  headingDisplay,
  headingXLarge,
  headingLarge,
  headingMedium,
  headingSmall,
  headingXSmall,
  subtitleLarge,
  subtitleSmall,
  paragraphLarge,
  paragraphSmall,
  caption,
  captionSmall,
  button,
  logo,
  logoSmall
}

String defaultFont = 'Cabin';
String logoFont = 'Poppins';

extension FontStylesExt on FontStyles {
  TextStyle get getText {
    switch (this) {
      case FontStyles.headingDisplay:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p96.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.headingXLarge:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p64.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.headingLarge:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p48.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.headingMedium:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.headingSmall:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.headingXSmall:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.normal,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.subtitleLarge:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.subtitleSmall:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.paragraphLarge:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p20.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.paragraphSmall:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.caption:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.captionSmall:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p12.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.button:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.logo:
        return TextStyle(
          fontFamily: logoFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case FontStyles.logoSmall:
        return TextStyle(
          fontFamily: logoFont,
          fontSize: Dots.p20.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      default:
        return TextStyle(
          fontFamily: defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
    }
  }
}
