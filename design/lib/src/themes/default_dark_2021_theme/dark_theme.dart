import 'package:flutter/material.dart';

import 'dark_font_styles.dart';
import 'dark_pallete.dart';
import '../../sizes/sizes.dart';

export 'dark_font_styles.dart';
export 'dark_pallete.dart';
export 'dark_icons_pallete.dart';


class DarkTheme {
  ThemeData get getTheme => defaultTheme();

  ThemeData defaultTheme() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: DarkPallete.grayPrimary[50],

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
        iconColor: DarkPallete.grayPrimary.shade200,
        fillColor: DarkPallete.grayPrimary.shade700,
        counterStyle: DarkFontStyles.paragraphLarge.getText,
        // labelStyle: DarkFontStyles.paragraphSmall.getText.copyWith(
        //   color: DarkPallete.grayPrimary.shade200,
        // ),
        labelStyle: DarkFontStyles.paragraphSmall.getText.apply(
          color: DarkPallete.grayPrimary.shade200,
          letterSpacingFactor: 2,
        ),
        hintStyle: DarkFontStyles.paragraphSmall.getText.copyWith(
          color: DarkPallete.grayPrimary.shade200,
        ),
        helperStyle: DarkFontStyles.caption.getText.copyWith(
          color: DarkPallete.grayPrimary.shade200,
        ),
        floatingLabelStyle: DarkFontStyles.paragraphLarge.getText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.all(Dots.p16.value),

        //borders
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: DarkPallete.mainColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: DarkPallete.grayPrimary.shade300,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: DarkPallete.warning,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: const BorderSide(
            width: 1,
            color: DarkPallete.warning,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: DarkPallete.grayPrimary.shade600,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dots.p8.value),
          borderSide: BorderSide(
            width: 1,
            color: DarkPallete.mainColor.shade600,
          ),
        ),
      ),
    );
  }

  final _switchThemeData = SwitchThemeData(
    thumbColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return DarkPallete.grayPrimary.shade200;
      }
      return DarkPallete.white;
    }),
    trackColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return DarkPallete.mainColor.shade600;
      }
      if (states.contains(MaterialState.disabled)) {
        return DarkPallete.grayPrimary.shade500.withOpacity(0.5);
      }
      return DarkPallete.grayPrimary.shade200;
    }),
  );

  final _radioThemeData = RadioThemeData(
    fillColor:
        MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return DarkPallete.mainColor;
      }
      if (states.contains(MaterialState.error)) {
        return DarkPallete.warning;
      }
      if (states.contains(MaterialState.disabled)) {
        return DarkPallete.grayPrimary.shade500;
      }
      return DarkPallete.white;
    }),
  );

  final _checkboxThemeData = CheckboxThemeData(
      checkColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade300;
        }
        return DarkPallete.white;
      }),
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.selected)) {
          return DarkPallete.mainColor.shade600;
        }
        return DarkPallete.white;
      }),
      materialTapTargetSize: MaterialTapTargetSize.padded,
      side: BorderSide(width: 2, color: DarkPallete.grayPrimary.shade200));

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
        return DarkFontStyles.button.getText;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade600;
        }
        if (states.contains(MaterialState.pressed)) {
          return DarkPallete.mainColor[900];
        }
        return DarkPallete.mainColor[600];
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade300;
        }
        if (states.contains(MaterialState.pressed)) {
          return DarkPallete.white;
        }
        return DarkPallete.white;
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
        return DarkFontStyles.button.getText;
      }),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return DarkPallete.grayPrimary.shade700;
        }
        return Colors.transparent;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.pressed)) {
          return DarkPallete.grayPrimary.shade200;
        }
        return DarkPallete.grayPrimary.shade300;
      }),
      side: MaterialStateProperty.resolveWith<BorderSide?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return BorderSide(width: 1, color: DarkPallete.grayPrimary.shade500);
        }
        if (states.contains(MaterialState.pressed)) {
          return BorderSide(width: 1, color: DarkPallete.grayPrimary.shade600);
        }
        return BorderSide(width: 1, color: DarkPallete.grayPrimary.shade400);
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
        return DarkFontStyles.button.getText;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return DarkPallete.grayPrimary.shade500;
        }
        if (states.contains(MaterialState.pressed)) {
          return DarkPallete.grayPrimary.shade300;
        }
        return DarkPallete.grayPrimary.shade100;
      }),
    ),
  );
}
