import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class TournamentmatchesItemWidget extends StatelessWidget {
  const TournamentmatchesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      decoration: AppDecoration.outlineLightgreen300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.v),
                child: Text(
                  "Subroto Cup",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 20.v,
                  bottom: 9.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.indigo800,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 16.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "Quater - Finals",
                  style: theme.textTheme.labelSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSearchBlack900,
                height: 14.v,
                width: 26.h,
                margin: EdgeInsets.only(
                  left: 22.h,
                  bottom: 19.v,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "12 /09 /2023",
                  style: CustomTextStyles.bodySmallPoppinsBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          Text(
            "Mirvana Academy  v/s  Genetica Sports",
            style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 47.v,
              width: 220.h,
              margin: EdgeInsets.only(left: 30.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 32.v,
                      width: 111.h,
                      margin: EdgeInsets.only(left: 13.h),
                      decoration: BoxDecoration(
                        color: appTheme.lightGreen1007f,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 63.h,
                        top: 3.v,
                        bottom: 18.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "0",
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup153,
                    height: 19.v,
                    width: 29.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
