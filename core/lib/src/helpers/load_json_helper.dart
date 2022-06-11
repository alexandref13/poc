import 'dart:convert';

import 'package:flutter/services.dart';

class LoadJsonHelper {
  LoadJsonHelper(String path) : _path = path;

  final String _path;
  Map<String, dynamic> _result = {};

  Future<bool> getJsonFromAsset() async {
    String jsonString = await rootBundle.loadString(_path);
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _result = jsonMap.map((key, value) {
      return MapEntry(key, value);
    });
    return true;
  }

  Map<String, dynamic> value(String key) => _result[key];
}