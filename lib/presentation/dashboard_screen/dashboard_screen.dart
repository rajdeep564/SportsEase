import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title_image_one.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        appBar: _buildAppBar(context),
        body: Container(
          width: 340.h,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Row(
                  children: [
                    Container(
                      height: 25.v,
                      width: 24.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLocationGray5001,
                            height: 25.v,
                            width: 20.h,
                            alignment: Alignment.centerLeft,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 35.h,
                        top: 4.v,
                      ),
                      child: Text(
                        "Academy",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLocationGray50001,
                      height: 23.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "Training  ",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGoogle,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 36.h),
                      child: Text(
                        "Coaches",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgClockBlueA200,
                      height: 23.v,
                      width: 26.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "Notifications",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBlueGray500,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 3.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 38.h),
                      child: Text(
                        "Report Defects",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFilter,
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 35.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Support",
                        style: CustomTextStyles.titleMediumPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 24.v,
                    width: 20.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Logout",
                      style: CustomTextStyles.titleMediumGray600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 169.v,
      title: Padding(
        padding: EdgeInsets.only(left: 29.h),
        child: Row(
          children: [
            AppbarTitleImageOne(
              imagePath: ImageConstant.imgRectangle124,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Column(
                children: [
                  AppbarSubtitle(
                    text: "Sam Santner",
                  ),
                  SizedBox(height: 2.v),
                  AppbarSubtitleThree(
                    text: "+91 98323 23343",
                    margin: EdgeInsets.only(right: 16.h),
                  ),
                  SizedBox(height: 32.v),
                  AppbarTitleButton(
                    margin: EdgeInsets.only(right: 24.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
