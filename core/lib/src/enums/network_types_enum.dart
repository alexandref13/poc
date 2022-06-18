enum NetworkTypesEnum {
  unreachable,
  mobile2G,
  mobile3G,
  mobile4G,
  mobile5G,
  otherMobile,
  wifi,
}

extension NetworkTypesEnumExtension on NetworkTypesEnum {
  String get value {
    switch (this) {
      case NetworkTypesEnum.unreachable:
        return 'unknown';
      case NetworkTypesEnum.mobile2G:
        return "mobile2G";
      case NetworkTypesEnum.mobile3G:
        return "mobile3G";
      case NetworkTypesEnum.mobile4G:
        return "mobile4G";
      case NetworkTypesEnum.mobile5G:
        return "mobile5G";
      case NetworkTypesEnum.otherMobile:
        return "otherMobile";
      case NetworkTypesEnum.wifi:
        return "wifi";
    }
  }
}

NetworkTypesEnum getNetworkType(String type) {
  switch (type) {
    case 'unknown':
      return NetworkTypesEnum.unreachable;
    case 'mobile2G':
      return NetworkTypesEnum.mobile2G;
    case 'mobile3G':
      return NetworkTypesEnum.mobile3G;
    case 'mobile4G':
      return NetworkTypesEnum.mobile4G;
    case 'mobile5G':
      return NetworkTypesEnum.mobile5G;
    case 'otherMobile':
      return NetworkTypesEnum.otherMobile;
    case 'wifi':
      return NetworkTypesEnum.wifi;
    default:
      return NetworkTypesEnum.unreachable;
  }
}
