import 'package:flutter/material.dart';

enum Widths{
  w4,
  w8,
  w12,
  w16,
  w20,
  w24,
  w32,
  w48,
  w64,
}

extension WidthsExtension on Widths{
  Widget get value{
    switch(this){
      case Widths.w4:
        return const SizedBox(width: 4.0);
      case Widths.w8:
        return const SizedBox(width: 8.0);
      case Widths.w12:
        return const SizedBox(width: 12.0);
      case Widths.w16:
        return const SizedBox(width: 16.0);
      case Widths.w20:
        return const SizedBox(width: 20.0);
      case Widths.w24:
        return const SizedBox(width: 24.0);
      case Widths.w32:
        return const SizedBox(width: 32.0);
      case Widths.w48:
        return const SizedBox(width: 48.0);
      case Widths.w64:
        return const SizedBox(width: 64.0);
    }
  }
}