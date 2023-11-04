import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ClienttestimonialsItemWidget extends StatelessWidget {
  const ClienttestimonialsItemWidget({Key? key})
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
          vertical: 9.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle163,
              height: 61.adaptSize,
              width: 61.adaptSize,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  bottom: 5.v,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tennis match",
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              " 2 Nov",
                              style:
                                  CustomTextStyles.labelLargePoppinsGray50001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "8:00 AM - 12:30 AM",
                              style: theme.textTheme.labelMedium,
                            ),
                            Text(
                              "Venue: Tennis court",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRight,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(bottom: 11.v),
                        ),
                      ],
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
