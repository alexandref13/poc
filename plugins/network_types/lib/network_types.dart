import 'dart:async';
import 'package:flutter/services.dart';

enum NetworkStatus {
  unreachable,
  wifi,
  mobile2G,
  mobile3G,
  mobile4G,
  mobile5G,
  otherMobile
}

class NetworkTypes {
  static NetworkTypes? _instance;

  factory NetworkTypes() {
    _instance ??= NetworkTypes._();
    return _instance!;
  }
  NetworkTypes._();

  static const MethodChannel _channel = MethodChannel('network_types');

  static const EventChannel _eventChannel = EventChannel('network_types_event');

  Stream<NetworkStatus>? _onNetworkStateChanged;

  Stream<NetworkStatus>? get onNetworkStateChanged{
    _onNetworkStateChanged = _eventChannel.receiveBroadcastStream().map((event) => event.toString()).map(_convertFromState);
    return _onNetworkStateChanged;
  }

  Future<NetworkStatus> currentNetworkStatus() async {
    final String? state = await _channel.invokeMethod("networkStatus");
    return _convertFromState(state);
  }

  NetworkStatus _convertFromState(String? state) {
    switch(state){
      case "0":
        return NetworkStatus.unreachable;
      case "1":
        return NetworkStatus.mobile2G;
      case "2":
        return NetworkStatus.mobile3G;
      case "3":
        return NetworkStatus.wifi;
      case "4":
        return NetworkStatus.mobile4G;
      case "5":
        return NetworkStatus.mobile5G;
      case "6":
        return NetworkStatus.otherMobile;
      default:
        return NetworkStatus.unreachable;
    }
  }
}
