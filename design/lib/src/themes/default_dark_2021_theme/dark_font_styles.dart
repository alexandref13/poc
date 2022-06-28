import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';

enum DarkFontStyles {
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

String _defaultFont = 'Cabin';
String _logoFont = 'Poppins';

extension DarkFontStylesExt on DarkFontStyles {
  TextStyle get getText {
    switch (this) {
      case DarkFontStyles.headingDisplay:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p96.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.headingXLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p64.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.headingLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p48.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.headingMedium:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.headingSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.headingXSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.normal,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.subtitleLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.subtitleSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.paragraphLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p20.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.paragraphSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.caption:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.captionSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p12.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.button:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.logo:
        return TextStyle(
          fontFamily: _logoFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case DarkFontStyles.logoSmall:
        return TextStyle(
          fontFamily: _logoFont,
          fontSize: Dots.p20.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      default:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
    }
  }
}
