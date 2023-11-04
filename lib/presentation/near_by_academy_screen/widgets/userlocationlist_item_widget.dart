import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class UserlocationlistItemWidget extends StatelessWidget {
  const UserlocationlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle15465x65,
          height: 65.adaptSize,
          width: 65.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Guni Academy",
                      style: theme.textTheme.titleSmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        "2km",
                        style: CustomTextStyles.labelLargePoppinsGray50001_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Text(
                  "7:00 AM - 10:00 AM",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Near amul dairy, cross road",
                  style: CustomTextStyles.labelMediumGray50001,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
