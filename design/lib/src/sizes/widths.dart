import 'package:flutter/material.dart';

import 'dots.dart';

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
  w96,
}

extension WidthsExtension on Widths{
  Widget get value{
    switch(this){
      case Widths.w4:
        return SizedBox(width: Dots.p4.value);
      case Widths.w8:
        return SizedBox(width: Dots.p8.value);
      case Widths.w12:
        return SizedBox(width: Dots.p12.value);
      case Widths.w16:
        return SizedBox(width: Dots.p16.value);
      case Widths.w20:
        return SizedBox(width: Dots.p20.value);
      case Widths.w24:
        return SizedBox(width: Dots.p24.value);
      case Widths.w32:
        return SizedBox(width: Dots.p32.value);
      case Widths.w48:
        return SizedBox(width: Dots.p48.value);
      case Widths.w64:
        return SizedBox(width: Dots.p64.value);
      case Widths.w96:
        return SizedBox(width: Dots.p96.value);
    }
  }
}