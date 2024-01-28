import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.25),
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeRoboto => theme.textTheme.bodyLarge!.roboto;
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.25),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoBlack900Regular =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoBluegray100 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.blueGray100,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoRegular =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoRegular_1 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoWhiteA700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRobotoWhiteA700Regular =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRoboto_1 => theme.textTheme.bodyMedium!.roboto;
  static get bodySmallDeeporangeA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green600,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDeeporangeA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumIndigoA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA700,
      );
  static get labelMediumIndigoA700Medium =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
