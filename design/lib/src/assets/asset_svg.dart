import 'package:flutter/material.dart';

import '../../dependencies/dependencies.dart';
import '../sizes/sizes.dart';

class AssetSvg extends StatelessWidget {
  AssetSvg(
    this.path, {
    Key? key,
    double? size,
    this.color,
  }) : _size = size ?? Dots.p64.value,
  super(key: key);

  final double _size;
  final Color? color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(
        path,
        width: _size,
        height: _size,
        color: color,
      ),
    );
  }
}
