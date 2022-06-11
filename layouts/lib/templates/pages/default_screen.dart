import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({
    Key? key,
    this.title = 'Page Title',
    this.isBottomNavigation = false,
    this.isBackground = true,
    this.backgroundPath = 'assets/images/background.png',
    this.backRoute,
    this.children,
  }) : super(key: key);

  final String title;
  final bool isBottomNavigation;
  final bool isBackground;
  final String backgroundPath;
  final List<Widget>? children;
  final String? backRoute;

  void navigateToBack() => backRoute != null ? Modular.to.navigate(backRoute!) : exit(0);

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
            leading: const Image(
                image: AssetImage('assets/images/anatel_logo_white.png')),
            leadingWidth: 36,
            actions: const [
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Image(
                      image: AssetImage('assets/images/eaq_logo_white.png')))
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
            padding: const EdgeInsets.all(16.0),
            decoration: isBackground
                ? BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundPath),
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
