import 'dart:io';
import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';
import '../../assets/assets.dart';

class DefaultScreen extends StatelessWidget {
  DefaultScreen({
    Key? key,
    this.title,
    this.name,
    this.isBackground = true,
    this.children,
    this.body,
    this.onBackPressed,
    this.bottomNavigationBar,
    String? backgroundPath,
    this.theme,
  })  : _backgroundPath = backgroundPath ?? Assets.background.path,
        super(key: key);

  final Widget? name;
  final String? title;
  final bool isBackground;
  final List<Widget>? children;
  final Widget? body;
  final Function? onBackPressed;

  final String _backgroundPath;
  final Widget? bottomNavigationBar;

  // ignore: prefer_typing_uninitialized_variables
  final theme;

  void navigateToBack() => onBackPressed?.call() ?? exit(0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        navigateToBack();

        return false;
      },
      child: SafeArea(
        child: Scaffold(
            appBar: title != null || name != null
                ? AppBar(
                    title: name ?? Text(title!),
                    centerTitle: true,
                    leadingWidth: Dots.p48.value,
                  )
                : null,
            bottomNavigationBar: bottomNavigationBar,
            body: Container(
              padding: EdgeInsets.all(Dots.p16.value),
              decoration: isBackground
                  ? BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_backgroundPath),
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
              child: body ??
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: children!,
                  ),
            )),
      ),
    );
  }
}
