import 'dart:async';
import 'package:flutter/services.dart';

class NetworkTypes {
  static NetworkTypes? _instance;

  factory NetworkTypes() {
    _instance ??= NetworkTypes._();
    return _instance!;
  }
  NetworkTypes._();

  static const MethodChannel _channel = MethodChannel('network_types');

  static const EventChannel _eventChannel = EventChannel('network_types_event');

  Stream<Map<String, String>>? _onNetworkStateChanged;

  Stream<Map<String, String>>? get onNetworkStateChanged {
    _onNetworkStateChanged = _eventChannel
        .receiveBroadcastStream()
        .map((event) => event.toString())
        .map(_convertFromState);
    return _onNetworkStateChanged;
  }

  Future<Map<String, String>> currentNetworkStatus() async {
    final String? state = await _channel.invokeMethod("networkStatus");
    return _convertFromState(state);
  }

  Map<String, String> _convertFromState(String? state) {
    switch (state) {
      case "1":
        return {"type": "Mobile 2G"};
      case "2":
        return {"type": "Mobile 3G"};
      case "3":
        return {"type": "Wifi"};
      case "4":
        return {"type": "Mobile 4G"};
      case "5":
        return {"type": "Mobile 5G"};
      case "6":
        return {"type": "Other Mobile"};
      case "7":
        return {"type": "Bluetooth"};
      case "0":
      default:
        return {"type": "Unknown"};
    }
  }
}
