import 'dots.dart';

enum BreakpointsEnum{
  desktop,
  laptop,
  tablet,
  mobile,
}

extension BreakpointsEnumExtension on BreakpointsEnum{
  double get value{
    switch(this){
      case BreakpointsEnum.desktop:
        return Dots.p4.value * 300; ///1200px
      case BreakpointsEnum.laptop:
        return Dots.p4.value * 256; ///1024px
      case BreakpointsEnum.tablet:
        return Dots.p4.value * 225; ///900px
      case BreakpointsEnum.mobile:
        return Dots.p4.value * 150; ///600px
    }
  }
}