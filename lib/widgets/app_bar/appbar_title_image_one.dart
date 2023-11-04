import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleImageOne extends StatelessWidget {
  AppbarTitleImageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder8,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 25.adaptSize,
          width: 25.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
