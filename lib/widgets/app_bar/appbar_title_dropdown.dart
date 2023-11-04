import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown({
    Key? key,
    required this.hintText,
    required this.items,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 144.h,
        icon: Container(
          margin: EdgeInsets.symmetric(vertical: 1.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        hintText: "Mehsana, Gujarat",
        items: items,
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
