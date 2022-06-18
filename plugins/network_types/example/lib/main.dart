import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:network_types/network_types.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String _networkStatus = 'unknown';
  late StreamSubscription<Map<String, String>> subscription;

  @override
  void initState() {
    super.initState();
    _listenNetworkStatus();
  }

  _listenNetworkStatus() async {
    if (Platform.isAndroid) {
      await Permission.phone.request();
    }
    subscription = NetworkTypes().onNetworkStateChanged!.listen((event) {
      setState(() {
        _networkStatus = "$event";
      });
    });
  }

  _currentNetworkStatus() async {
    if (Platform.isAndroid) {
      await Permission.phone.request();
    }
    Map<String, String> status = await NetworkTypes().currentNetworkStatus();
    final String type = status['type']!;
    switch (type) {
      case "unknown":
      //unreachable
      case "wifi":
      //wifi
      case "mobile2G":
      //2g
      case "mobile3G":
      //3g
      case "mobile4G":
      //4g
      case "mobile5G":
      //5h
      case "otherMobile":
      //other
    }
    setState(() {
      _networkStatus = type;
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_networkStatus\n'),
        ),
      ),
    );
  }
}
