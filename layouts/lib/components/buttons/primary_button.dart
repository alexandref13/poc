import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.isPrimary = true,
    this.text,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  final Function()? onPressed;
  final bool isPrimary;
  final Widget? child;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return text != null
        ? textButton()
        : isPrimary
            ? primaryButton()
            : secondaryButton();
  }

  Widget primaryButton() {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return LightPallete.mainColor;
          }
          return LightPallete.mainColor;
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          );
        }),
        elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
          return 0;
        }),
      ),
      child: child,
    );
  }

  Widget secondaryButton() {
    return OutlinedButton(
      onPressed: onPressed,
      child: child!,
    );
  }

  Widget textButton() {
    return TextButton(
      onPressed: onPressed,
      child: Center(
        child: Text(text!),
      ),
    );
  }
}
