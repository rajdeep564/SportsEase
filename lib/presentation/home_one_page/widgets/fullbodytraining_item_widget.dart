import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class FullbodytrainingItemWidget extends StatelessWidget {
  const FullbodytrainingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 1.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle15461x61,
              height: 61.adaptSize,
              width: 61.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(top: 3.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Full Body Training",
                          style: theme.textTheme.titleSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text(
                            " 4 Nov",
                            style: CustomTextStyles.labelLargePoppinsGray50001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "7:00 AM - 9:00 AM",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Venue: Gym",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
