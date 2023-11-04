import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AvailablesportsItemWidget extends StatelessWidget {
  const AvailablesportsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.img,
                height: 42.v,
                width: 28.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              "Football",
              style: CustomTextStyles.bodySmallPoppinsBlack90010,
            ),
          ],
        ),
      ),
    );
  }
}
