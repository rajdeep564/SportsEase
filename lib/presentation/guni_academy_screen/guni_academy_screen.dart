import '../guni_academy_screen/widgets/academycoaches_item_widget.dart';
import '../guni_academy_screen/widgets/availablesports_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_rating_bar.dart';

class GuniAcademyScreen extends StatelessWidget {
  const GuniAcademyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Guni Academy",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 26.v),
                        _buildFrameSixtyNine(context),
                        SizedBox(height: 35.v),
                        _buildClock(context),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 27.h,
                            right: 88.h,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation,
                                height: 17.v,
                                width: 13.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Gozaria , Mehsana",
                                  style: CustomTextStyles
                                      .bodySmallPoppinsBlack90012_1,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup61,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Mon - Sat",
                                  style: CustomTextStyles
                                      .bodySmallPoppinsBlack90012_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 63.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "About Service",
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 354.h,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              right: 19.h,
                            ),
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas varius. Eget nullam auctor elementum cursus neque ornare nisl aenean suspendisse. Eget adipiscing porttitor lacus quam nec turpis. ",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Available Sports",
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildAvailableSports(context),
                        SizedBox(height: 38.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Academy Coaches",
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildAcademyCoaches(context),
                        SizedBox(height: 32.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Reviews",
                            style: CustomTextStyles.titleMediumSemiBold,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildJeromeBell1(context),
                        SizedBox(height: 25.v),
                        _buildJeromeBell2(context),
                        SizedBox(height: 25.v),
                        _buildJeromeBell3(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildJoinTheAcademy(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSixtyNine(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle165,
            height: 187.v,
            width: 390.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle166,
            height: 187.v,
            width: 1.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 42.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "7:00 AM - 10:00 AM",
              style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 132.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHeroiconsStarSolid,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "4.5 (254 Reviews)",
                    style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAvailableSports(BuildContext context) {
    return SizedBox(
      height: 84.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 70.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 16.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return AvailablesportsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAcademyCoaches(BuildContext context) {
    return SizedBox(
      height: 109.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 14.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 22.h,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return AcademycoachesItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildJeromeBell1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 31.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 66.v,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Jerome Bell",
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 5.v,
                          ),
                          child: Text(
                            "5 Days ago",
                            style: CustomTextStyles.bodySmallPoppinsGray400,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFlag,
                          height: 14.v,
                          width: 12.h,
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    CustomRatingBar(
                      initialRating: 4,
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 248.h,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        right: 19.h,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas variu. Eget adipiscing porttitor lacus quam nec turpis. ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: _buildFavoriteBorder(
                        context,
                        userFavoriteCount: "816",
                        userBookmarkCount: "877",
                        userChatCount: "185",
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

  /// Section Widget
  Widget _buildJeromeBell2(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 31.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar48x48,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 66.v,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Jerome Bell",
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 5.v,
                          ),
                          child: Text(
                            "5 Days ago",
                            style: CustomTextStyles.bodySmallPoppinsGray400,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFlag,
                          height: 14.v,
                          width: 12.h,
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    CustomRatingBar(
                      initialRating: 4,
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 248.h,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        right: 19.h,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas variu. Eget adipiscing porttitor lacus quam nec turpis. ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: _buildFavoriteBorder(
                        context,
                        userFavoriteCount: "816",
                        userBookmarkCount: "877",
                        userChatCount: "185",
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

  /// Section Widget
  Widget _buildJeromeBell3(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 31.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar1,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 66.v,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Jerome Bell",
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                        Container(
                          height: 2.adaptSize,
                          width: 2.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 5.v,
                          ),
                          child: Text(
                            "5 Days ago",
                            style: CustomTextStyles.bodySmallPoppinsGray400,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFlag,
                          height: 14.v,
                          width: 12.h,
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 248.h,
                      margin: EdgeInsets.only(
                        left: 3.h,
                        right: 19.h,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas variu. Eget adipiscing porttitor lacus quam nec turpis. ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: _buildFavoriteBorder(
                        context,
                        userFavoriteCount: "816",
                        userBookmarkCount: "877",
                        userChatCount: "185",
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

  /// Section Widget
  Widget _buildJoinTheAcademy(BuildContext context) {
    return CustomElevatedButton(
      text: "Join the Academy",
      margin: EdgeInsets.only(
        left: 45.h,
        right: 45.h,
        bottom: 20.v,
      ),
    );
  }

  /// Common widget
  Widget _buildFavoriteBorder(
    BuildContext context, {
    required String userFavoriteCount,
    required String userBookmarkCount,
    required String userChatCount,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavoriteBorder,
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            userFavoriteCount,
            style: CustomTextStyles.labelMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBookmarkBorder,
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            userBookmarkCount,
            style: CustomTextStyles.labelMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgChatBubbleOutline,
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 1.v,
            bottom: 1.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            userChatCount,
            style: CustomTextStyles.labelMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
