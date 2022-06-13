import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';


enum LightFontStyles{
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

extension LightFontStylesExt on LightFontStyles {
  TextStyle get getText {
    switch (this) {
      case LightFontStyles.headingDisplay:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p96.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.headingXLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p64.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.headingLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p48.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.headingMedium:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.headingSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w700,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.headingXSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.normal,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.subtitleLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.subtitleSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p24.value,
          fontWeight: FontWeight.w500,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.paragraphLarge:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p20.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.paragraphSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.caption:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.captionSmall:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p12.value,
          fontWeight: FontWeight.w400,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.button:
        return TextStyle(
          fontFamily: _defaultFont,
          fontSize: Dots.p16.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.logo:
        return TextStyle(
          fontFamily: _logoFont,
          fontSize: Dots.p32.value,
          fontWeight: FontWeight.w600,
          letterSpacing: Dots.p0.value,
        );
      case LightFontStyles.logoSmall:
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
