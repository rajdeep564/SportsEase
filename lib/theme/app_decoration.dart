import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo800,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.black900,
          width: 15.h,
        ),
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray20001 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.gray20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineLightgreen300 => BoxDecoration(
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 3.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
