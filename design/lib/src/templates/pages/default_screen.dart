import 'dart:io';
import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';
import '../../assets/assets.dart';

class DefaultScreen extends StatelessWidget {
  DefaultScreen({
    Key? key,
    this.title,
    this.isBackground = true,
    this.children,
    this.onBackPressed,
    this.navigationItens,
    String? backgroundPath,
  })  : _backgroundPath = backgroundPath ?? Assets.background.path,
        super(key: key);

  final String? title;
  final bool isBackground;
  final List<Widget>? children;
  final Function? onBackPressed;

  final String _backgroundPath;
  final List<BottomNavigationBarItem>? navigationItens;

  void navigateToBack() => onBackPressed?.call() ?? exit(0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        navigateToBack();

        return false;
      },
      child: Scaffold(
          appBar: title != null ? AppBar(
            title: Text(title!),
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dots.p8.value,
              ),
              child: Image(image: AssetImage(Assets.anatel.path)),
            ),
            leadingWidth: Dots.p48.value,
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dots.p8.value,
                ),
                child: Image(
                  image: AssetImage(Assets.eaq.path),
                  width: Dots.p48.value,
                ),
              ),
            ],
          ) : null,
          bottomNavigationBar: navigationItens != null ? BottomNavigationBar(items: navigationItens!) : null,
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
