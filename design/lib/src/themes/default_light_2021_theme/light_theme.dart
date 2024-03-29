import 'package:flutter/material.dart';

import 'light_font_styles.dart';
import 'light_pallete.dart';
import '../../sizes/sizes.dart';

export 'light_font_styles.dart';
export 'light_pallete.dart';
export 'light_icons_pallete.dart';


class LightTheme {
  ThemeData get getTheme => defaultTheme();

  ThemeData defaultTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: LightPallete.grayPrimary[50],

      //components
      switchTheme: _switchThemeData,
      radioTheme: _radioThemeData,
      elevatedButtonTheme: _elevatedButtonThemeData,
      textButtonTheme: _textButtonThemeData,
      outlinedButtonTheme: _outlinedButtonThemeData,
      checkboxTheme: _checkboxThemeData,

      //input decoration
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        iconColor: LightPallete.grayPrimary.shade200,
        fillColor: LightPallete.grayPrimary.shade700,
        counterStyle: LightFontStyles.paragraphLarge.getText,
        // labelStyle: LightFontStyles.paragraphSmall.getText.copyWith(
        //   color: LightPallete.grayPrimary.shade200,
        // ),
        labelStyle: LightFontStyles.paragraphSmall.getText.apply(
          color: LightPallete.grayPrimary.shade200,
          letterSpacingFactor: 2,
        ),
        hintStyle: LightFontStyles.paragraphSmall.getText.copyWith(
          color: LightPallete.grayPrimary.shade200,
        ),
        helperStyle: LightFontStyles.caption.getText.copyWith(
          color: LightPallete.grayPrimary.shade200,
        ),
        floatingLabelStyle: LightFontStyles.paragraphLarge.getText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.all(Dots.p16.value),

        //borders
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: LightPallete.mainColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: LightPallete.grayPrimary.shade300,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: LightPallete.warning,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: LightPallete.warning,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: LightPallete.grayPrimary.shade600,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: LightPallete.mainColor.shade600,
          ),
        ),
      ),
    );
  }

  final _switchThemeData = SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return LightPallete.grayPrimary.shade200;
      }
      return LightPallete.white;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return LightPallete.mainColor.shade600;
      }
      if (states.contains(MaterialState.disabled)) {
        return LightPallete.grayPrimary.shade500.withOpacity(0.5);
      }
      return LightPallete.grayPrimary.shade200;
    }),
  );

  final _radioThemeData = RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return LightPallete.mainColor;
      }
      if (states.contains(MaterialState.error)) {
        return LightPallete.warning;
      }
      if (states.contains(MaterialState.disabled)) {
        return LightPallete.grayPrimary.shade500;
      }
      return LightPallete.white;
    }),
  );

  final _checkboxThemeData = CheckboxThemeData(
      checkColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade300;
        }
        return LightPallete.white;
      }),
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.selected)) {
          return LightPallete.mainColor.shade600;
        }
        return LightPallete.white;
      }),
      materialTapTargetSize: MaterialTapTargetSize.padded,
      side: BorderSide(width: 2, color: LightPallete.grayPrimary.shade200,));

  final _elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize:
          MaterialStateProperty.resolveWith<Size?>((Set<MaterialState> states) {
        return Size.fromHeight(Dots.p48.value);
      }),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (Set<MaterialState> states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
        );
      }),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (Set<MaterialState> states) {
        return LightFontStyles.button.getText;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade600;
        }
        if (states.contains(MaterialState.pressed)) {
          return LightPallete.mainColor[900];
        }
        return LightPallete.mainColor[600];
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade300;
        }
        if (states.contains(MaterialState.pressed)) {
          return LightPallete.white;
        }
        return LightPallete.white;
      }),
    ),
  );

  final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize:
          MaterialStateProperty.resolveWith<Size?>((Set<MaterialState> states) {
        return Size.fromHeight(Dots.p48.value);
      }),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
          (Set<MaterialState> states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
        );
      }),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (Set<MaterialState> states) {
        return LightFontStyles.button.getText;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return LightPallete.grayPrimary.shade700;
        }
        return Colors.transparent;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.pressed)) {
          return LightPallete.grayPrimary.shade200;
        }
        return LightPallete.grayPrimary.shade300;
      }),
      side: MaterialStateProperty.resolveWith<BorderSide?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return BorderSide(width: 1, color: LightPallete.grayPrimary.shade500,);
        }
        if (states.contains(MaterialState.pressed)) {
          return BorderSide(width: 1, color: LightPallete.grayPrimary.shade600,);
        }
        return BorderSide(width: 1, color: LightPallete.grayPrimary.shade400,);
      }),
    ),
  );

  final _textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      fixedSize:
          MaterialStateProperty.resolveWith<Size?>((Set<MaterialState> states) {
        return Size.fromHeight(Dots.p48.value);
      }),
      textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
          (Set<MaterialState> states) {
        return LightFontStyles.button.getText;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return LightPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.pressed)) {
          return LightPallete.grayPrimary.shade300;
        }
        return LightPallete.grayPrimary.shade100;
      }),
    ),
  );
}
