import '../home_one_page/widgets/fullbodytraining_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title_image.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeOnePage extends StatelessWidget {
  HomeOnePage({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildTwelve(context),
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 788.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Your Academy",
                            style: CustomTextStyles.titleMediumSemiBold18,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildFourteen(context),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Academy Announcement",
                            style: CustomTextStyles.titleMediumSemiBold18,
                          ),
                        ),
                        SizedBox(height: 34.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 253.h,
                            margin: EdgeInsets.only(right: 25.h),
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas varius. ",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 49.v),
                        _buildDrillsSessions(context),
                        SizedBox(height: 32.v),
                        _buildFullBodyTraining(context),
                        SizedBox(height: 25.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Rent",
                            style: CustomTextStyles.titleMediumSemiBold18,
                          ),
                        ),
                        SizedBox(height: 229.v),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Your Recent Fixtures",
                            style: CustomTextStyles.titleMediumErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      width: 374.h,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          CustomAppBar(
            height: 46.v,
            title: Padding(
              padding: EdgeInsets.only(left: 36.h),
              child: Column(
                children: [
                  AppbarSubtitleFour(
                    text: "Location",
                    margin: EdgeInsets.only(right: 118.h),
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    children: [
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgFluentLocation16Filled,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      AppbarTitleDropdown(
                        margin: EdgeInsets.only(left: 5.h),
                        hintText: "Mehsana, Gujarat",
                        items: dropdownItemList,
                        onTap: (value) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgClarityNotific,
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 39.h,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.h),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return SizedBox(
      height: 146.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle145,
            height: 146.v,
            width: 390.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "GUNI Sports",
              style: CustomTextStyles.titleMediumPrimaryContainerSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDrillsSessions(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 23.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Drills & sessions",
              style: CustomTextStyles.titleMediumSemiBold18,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 3.v,
              ),
              child: Text(
                "See All",
                style: CustomTextStyles.bodySmallPoppinsIndigo800,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullBodyTraining(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return FullbodytrainingItemWidget();
          },
        ),
      ),
    );
  }
}
