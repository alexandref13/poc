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
  String _networkStatus = 'Unknown';
  late StreamSubscription<NetworkStatus> subscription;

  @override
  void initState() {
    super.initState();
    _listenNetworkStatus();
  }

  _listenNetworkStatus()async {
    if(Platform.isAndroid) {
      await Permission.phone.request();
    }
    subscription = NetworkTypes().onNetworkStateChanged!.listen((event) {

      setState(() {
        _networkStatus = "$event";
      });
    });
  }

  _currentNetworkStatus() async {
    if(Platform.isAndroid) {
      await Permission.phone.request();
    }
    NetworkStatus status = await NetworkTypes().currentNetworkStatus();
    switch(status) {
      case NetworkStatus.unreachable:
      //unreachable
      case NetworkStatus.wifi:
      //wifi
      case NetworkStatus.mobile2G:
      //2g
      case NetworkStatus.mobile3G:
      //3g
      case NetworkStatus.mobile4G:
      //4g
      case NetworkStatus.mobile5G:
      //5h
      case NetworkStatus.otherMobile:
      //other
    }
    setState(() {
      _networkStatus = status.toString() ;
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
