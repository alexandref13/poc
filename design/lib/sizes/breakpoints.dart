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
        return 1200;
      case BreakpointsEnum.laptop:
        return 1024;
      case BreakpointsEnum.tablet:
        return 900;
      case BreakpointsEnum.mobile:
        return 600;
    }
  }
}