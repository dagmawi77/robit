import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray5006b,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray50002,
          fontSize: 16.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.65),
          fontSize: 15.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 64.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Prosto One',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 24.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 9.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 17.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'PT Sans',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4BA26A),
    primaryContainer: Color(0XFF262626),

    // Error colors
    errorContainer: Color(0XFF7A7B7A),
    onError: Color(0XFFAEAEAE),

    // On colors(text colors)
    onPrimary: Color(0XFF1E1E1E),
    onPrimaryContainer: Color(0XFFBEE3CB),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA400 => Color(0XFFF6C602);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray900 => Color(0XFF333333);

  // Gray
  Color get gray100 => Color(0XFFF1F5F5);
  Color get gray10001 => Color(0XFFF3F3F3);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray50 => Color(0XFFFFFBFB);
  Color get gray500 => Color(0XFFA19C9C);
  Color get gray50001 => Color(0XFFA8A8A8);
  Color get gray50002 => Color(0XFF9A9595);
  Color get gray50003 => Color(0XFFA1A1A1);
  Color get gray50004 => Color(0XFFA09898);
  Color get gray50005 => Color(0XFF97A0A1);
  Color get gray50006 => Color(0XFFB0ABAB);
  Color get gray700 => Color(0XFF696666);

  // Grayb
  Color get gray5006b => Color(0X6B989898);

  // Lime
  Color get lime600 => Color(0XFFCFA841);

  // Red
  Color get redA700 => Color(0XFFFF0000);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();