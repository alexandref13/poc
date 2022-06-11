import 'dots.dart';

enum Gaps{
  gap4,
  gap8,
  gap12,
  gap16,
  gap20,
  gap24,
  gap32,
  gap48,
  gap64,
  gap96,
}

extension GapsExtension on Gaps{
  double get value{
    switch(this){
      case Gaps.gap4:
        return Dots.p4.value;
      case Gaps.gap8:
        return Dots.p8.value;
      case Gaps.gap12:
        return Dots.p12.value;
      case Gaps.gap16:
        return Dots.p16.value;
      case Gaps.gap20:
        return Dots.p20.value;
      case Gaps.gap24:
        return Dots.p24.value;
      case Gaps.gap32:
        return Dots.p32.value;
      case Gaps.gap48:
        return Dots.p48.value;
      case Gaps.gap64:
        return Dots.p64.value;
      case Gaps.gap96:
        return Dots.p96.value;
    }
  }
}