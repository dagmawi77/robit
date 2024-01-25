import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90018_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.88),
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack90019 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get bodyLargeGray50006 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50006,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeffffffff => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 17.fSize,
      );
  static get bodyMedium99ebebf5 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0X99EBEBF5),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.44),
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 14.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsWhiteA700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodySmallGray50005 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50005,
      );
  // Headline text style
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get titleMediumGray50003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get prostoOne {
    return copyWith(
      fontFamily: 'Prosto One',
    );
  }

  TextStyle get pTSans {
    return copyWith(
      fontFamily: 'PT Sans',
    );
  }
}
