enum DataUnitsEnum {
  bytes,
  kb,
  mb,
  gb,
  tb,
  pb,
}

extension DataUnitsEnumExtension on DataUnitsEnum {
  String get unit {
    switch (this) {
      case DataUnitsEnum.bytes:
        return 'bytes';
      case DataUnitsEnum.kb:
        return 'kb';
      case DataUnitsEnum.mb:
        return 'mb';
      case DataUnitsEnum.gb:
        return 'gb';
      case DataUnitsEnum.tb:
        return 'tb';
      case DataUnitsEnum.pb:
        return 'pb';
    }
  }
}