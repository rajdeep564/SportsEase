import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class WeeklychallengesItemWidget extends StatelessWidget {
  const WeeklychallengesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Achieve total of 10,000 Steps",
                    style: CustomTextStyles.titleSmallPrimaryContainer_1,
                  ),
                ),
                Text(
                  "4350",
                  style: CustomTextStyles.titleMediumLightgreen300,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 201.h,
                  margin: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Mattis convallis venenatis cursus mi. ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallPoppinsPrimaryContainer,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreen300,
                  height: 26.v,
                  width: 40.h,
                  margin: EdgeInsets.only(
                    left: 59.h,
                    top: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 6.v,
            width: 288.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 287.h,
                    child: Divider(
                      color: appTheme.gray50001,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup6,
                  height: 6.v,
                  width: 118.h,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
