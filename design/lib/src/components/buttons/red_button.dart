import 'package:flutter/material.dart';

import '../../sizes/sizes.dart';
import '../../themes/themes.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    this.text,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget? child;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return LightPallete.warning;
          }
          return LightPallete.warning;
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dots.p8.value),
          );
        }),
        elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
          return Dots.p0.value;
        }),
      ),
      child: child,
    );
  }
}
