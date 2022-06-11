import 'package:flutter/material.dart';

class LightPallete implements Colors {
  static const MaterialColor grayPrimary = MaterialColor(
    _grayPrimary,
    <int, Color>{
      50: Color(0xFFF0F0F1),
      100: Color(0xFFE1E1E2),
      200: Color(0xFFC3C4C6),
      300: Color(0xFFA5A5A9),
      400: Color(0xFF78797D),
      500: Color(_grayPrimary),
      600: Color(0xFF44454B),
      700: Color(0xFF313137),
      800: Color(0xFF27272C),
      900: Color(0xFF131316),
    },
  );

  static const MaterialColor mainColor = MaterialColor(
    _mainColor,
    <int, Color>{
      50: Color(0xFFBFD8F3),
      100: Color(0xFF8CB9EA),
      200: Color(0xFF66A2E3),
      300: Color(0xFF4C93DE),
      400: Color(0xFF3383D9),
      500: Color(_mainColor),
      600: Color(0xFF0064D0),
      700: Color(0xFF0056B3),
      800: Color(0xFF004896),
      900: Color(0xFF003C7D),
    },
  );

  static const int _grayPrimary = 0xFF57585E;
  static const int _mainColor = 0xFF1974D5;
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color sucess = Color(0xFF00C67E);
  static const Color warning = Color(0xFFD63300);
  static const Color info = Color(0xFFFCCC51);
}