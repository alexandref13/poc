enum Dots{
  p4,
  p8,
  p12,
  p16,
  p20,
  p24,
  p32,
  p48,
  p64,
  p96,
}

extension DotsExtension on Dots{
  double get value{
    switch(this){
      case Dots.p4:
        return 4.0;
      case Dots.p8:
        return 8.0;
      case Dots.p12:
        return 12.0;
      case Dots.p16:
        return 16.0;
      case Dots.p20:
        return 20.0;
      case Dots.p24:
        return 24.0;
      case Dots.p32:
        return 32.0;
      case Dots.p48:
        return 48.0;
      case Dots.p64:
        return 64.0;
      case Dots.p96:
        return 96.0;
    }
  }
}