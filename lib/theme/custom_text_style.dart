import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsBlack90010 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBlack90012 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack90012_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray100 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray100,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray500 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray500,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsGray70010 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray700_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallPoppinsIndigo400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo400,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsIndigo800 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.indigo800,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallIndigo800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigo800,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargePoppinsAmberA400 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.amberA400,
      );
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePoppinsBlack900_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get labelLargePoppinsGray50001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargePoppinsGray50001_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargePoppinsGray50002 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray50002,
      );
  static get labelLargePoppinsIndigo400 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.indigo400,
      );
  static get labelLargePoppinsLightgreen300 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.lightGreen300,
      );
  static get labelLargePoppinsOnPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePoppinsPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelMediumGray500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get labelMediumGray50001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get labelMediumNunitoSans =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumNunitoSansBlack900 =>
      theme.textTheme.labelMedium!.nunitoSans.copyWith(
        color: appTheme.black900.withOpacity(0.54),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelMediumPrimaryContainerSemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  // Nunito text style
  static get nunitoSansPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).nunitoSans;
  // Poppins text style
  static get poppinsGray50001 => TextStyle(
        color: appTheme.gray50001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Title text style
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumLightgreen300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen300,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
