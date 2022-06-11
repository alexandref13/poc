import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import '../../sizes/sizes.dart';
import '../../assets/assets.dart';

class DefaultScreen extends StatelessWidget {
  DefaultScreen({
    Key? key,
    this.title = 'Page Title',
    this.isBottomNavigation = false,
    this.isBackground = true,
    this.backRoute,
    this.children,
    String? backgroundPath,
  }) : _backgroundPath = backgroundPath ?? Assets.background.path,
        super(key: key);

  final String title;
  final bool isBottomNavigation;
  final bool isBackground;
  final List<Widget>? children;
  final String? backRoute;

  final String _backgroundPath;

  void navigateToBack() =>
      backRoute != null ? Modular.to.navigate(backRoute!) : exit(0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        navigateToBack();

        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            leading:
                Image(image: AssetImage(Assets.anatel.path)),
            leadingWidth: Dots.p32.value,
            actions: [
              SizedBox(
                  width: Dots.p48.value,
                  height: Dots.p48.value,
                  child: Image(
                      image: AssetImage(Assets.eaq.path))),
            ],
          ),
          bottomNavigationBar: isBottomNavigation
              ? BottomNavigationBar(items: [
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      label: L10N(context).text('welcome')['name']),
                  BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      label: L10N(context).text('welcome')['name']),
                ])
              : null,
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(Dots.p16.value),
            decoration: isBackground
                ? BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(_backgroundPath),
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: children!,
            ),
          )),
    );
  }
}
