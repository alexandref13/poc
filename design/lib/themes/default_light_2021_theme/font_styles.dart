import 'package:flutter/material.dart';

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

extension FontStylesExt on FontStyles {
  TextStyle get getText {
    switch (this) {
      case FontStyles.headingDisplay:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 96,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
        );
      case FontStyles.headingXLarge:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 64,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
        );
      case FontStyles.headingLarge:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 48,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
        );
      case FontStyles.headingMedium:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 32,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
        );
      case FontStyles.headingSmall:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          letterSpacing: 0,
        );
      case FontStyles.headingXSmall:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          letterSpacing: 0,
        );
      case FontStyles.subtitleLarge:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 32,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        );
      case FontStyles.subtitleSmall:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        );
      case FontStyles.paragraphLarge:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
      case FontStyles.paragraphSmall:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
      case FontStyles.caption:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
      case FontStyles.captionSmall:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
      case FontStyles.button:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        );
      case FontStyles.logo:
        return const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 28,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        );
        case FontStyles.logoSmall:
        return const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        );
      default:
        return const TextStyle(
          fontFamily: 'Cabin',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );
    }
  }
}
