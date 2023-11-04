import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application6/core/app_export.dart';
import 'package:rajdeep_singh_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:rajdeep_singh_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:rajdeep_singh_s_application6/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application6/widgets/custom_rating_bar.dart';
import 'package:rajdeep_singh_s_application6/widgets/custom_search_view.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_rating_bar.dart';

class CoachesScreen extends StatelessWidget {
  CoachesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  right: 33.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search Academy ",
                ),
              ),
              SizedBox(height: 45.v),
              _buildSearchRow(context),
              SizedBox(height: 12.v),
              _buildAcademyRows(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 57.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "See More",
                      style: CustomTextStyles.bodySmallGray50001,
                    ),
                    Text(
                      "See More",
                      style: CustomTextStyles.bodySmallGray50001,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildJoinButtons(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Compare Academies",
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle157,
            height: 104.v,
            width: 152.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 44.v,
              bottom: 38.v,
            ),
            child: Text(
              "VS",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Container(
            height: 104.v,
            width: 152.h,
            margin: EdgeInsets.only(left: 9.h),
            padding: EdgeInsets.symmetric(
              horizontal: 57.h,
              vertical: 33.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGridiconsPlus,
              height: 37.adaptSize,
              width: 37.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcademyRows(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Column(
              children: [
                Text(
                  "Academy Name",
                  style: CustomTextStyles.labelLargeSemiBold,
                ),
                SizedBox(height: 27.v),
                SizedBox(
                  width: 162.h,
                  child: Text(
                    "Cricket , Football, Hockey\nKabaddi, Swimming, \nKho-Kho, Chess, Volleyball",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "6:00 AM - 12:00 PM",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "14 Coaches",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "5 KM",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 9.v),
                CustomRatingBar(
                  initialRating: 4,
                ),
                SizedBox(height: 12.v),
                Text(
                  "4.5 (232 Reviews)",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              children: [
                Text(
                  "Academy Name",
                  style: CustomTextStyles.labelLargeSemiBold,
                ),
                SizedBox(height: 27.v),
                SizedBox(
                  width: 159.h,
                  child: Text(
                    "Cricket , Football, Hockey\nKabaddi, Swimming, \nKho-Kho,Chess, Volleyball",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "7:00 AM - 10:00 PM",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "10 Coaches",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 19.v),
                Text(
                  "3 KM",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
                SizedBox(height: 9.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup180,
                  height: 10.v,
                  width: 36.h,
                ),
                SizedBox(height: 12.v),
                Text(
                  "3.9 (132 Reviews)",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 171.h,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildJoinButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 32.h,
        bottom: 40.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomElevatedButton(
              text: "Join",
              margin: EdgeInsets.only(right: 23.h),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "Join",
              margin: EdgeInsets.only(left: 23.h),
            ),
          ),
        ],
      ),
    );
  }
}
