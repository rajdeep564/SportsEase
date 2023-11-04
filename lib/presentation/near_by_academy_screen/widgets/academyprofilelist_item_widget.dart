import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class AcademyprofilelistItemWidget extends StatelessWidget {
  const AcademyprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle154,
          height: 65.adaptSize,
          width: 65.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Athena Academy",
                      style: theme.textTheme.titleSmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        " 700m",
                        style: CustomTextStyles.labelLargePoppinsGray50001_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Text(
                  "7:00 AM - 9:00 PM",
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
