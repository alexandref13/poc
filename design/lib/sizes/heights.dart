import 'package:flutter/material.dart';

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
}

extension HeightsExtension on Heights{
  Widget get value{
    switch(this){
      case Heights.h4:
        return const SizedBox(height: 4.0);
      case Heights.h8:
        return const SizedBox(height: 8.0);
      case Heights.h12:
        return const SizedBox(height: 12.0);
      case Heights.h16:
        return const SizedBox(height: 16.0);
      case Heights.h20:
        return const SizedBox(height: 20.0);
      case Heights.h24:
        return const SizedBox(height: 24.0);
      case Heights.h32:
        return const SizedBox(height: 32.0);
      case Heights.h48:
        return const SizedBox(height: 48.0);
      case Heights.h64:
        return const SizedBox(height: 64.0);
    }
  }
}