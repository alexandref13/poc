import 'package:flutter/material.dart';

import 'dots.dart';

enum Heights{
  h4,
  h8,
  h12,
  h16,
  h20,
  h24,
  h32,
  h48,
  h64,
  h96
}

extension HeightsExtension on Heights{
  Widget get value{
    switch(this){
      case Heights.h4:
        return SizedBox(height: Dots.p4.value);
      case Heights.h8:
        return SizedBox(height: Dots.p8.value);
      case Heights.h12:
        return SizedBox(height: Dots.p12.value);
      case Heights.h16:
        return SizedBox(height: Dots.p16.value);
      case Heights.h20:
        return SizedBox(height: Dots.p20.value);
      case Heights.h24:
        return SizedBox(height: Dots.p24.value);
      case Heights.h32:
        return SizedBox(height: Dots.p32.value);
      case Heights.h48:
        return SizedBox(height: Dots.p48.value);
      case Heights.h64:
        return SizedBox(height: Dots.p64.value);
      case Heights.h96:
        return SizedBox(height: Dots.p96.value);
    }
  }
}