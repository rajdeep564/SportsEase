import '../career_screen/widgets/tournamentmatches_item_widget.dart';
import '../career_screen/widgets/weeklychallenges_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class CareerScreen extends StatelessWidget {
  CareerScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text("Overall Stats",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold18))),
                          SizedBox(height: 27.v),
                          _buildAvatar(context),
                          SizedBox(height: 48.v),
                          _buildDashboard(context),
                          SizedBox(height: 41.v),
                          _buildLineThirtyTwo1(context),
                          SizedBox(height: 60.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text("Weekly challenges",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold18))),
                          SizedBox(height: 28.v),
                          _buildWeeklyChallenges(context),
                          SizedBox(height: 47.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 18.h),
                                  child: Text("Tournament Matches",
                                      style: CustomTextStyles
                                          .titleMediumSemiBold18))),
                          SizedBox(height: 34.v),
                          _buildSearchBar(context),
                          SizedBox(height: 37.v),
                          _buildTournamentMatches(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 15.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Career"));
  }

  /// Section Widget
  Widget _buildAvatar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
        decoration: AppDecoration.fillGray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgAvatar72x72,
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    radius: BorderRadius.circular(36.h),
                    margin: EdgeInsets.only(top: 7.v, bottom: 32.v)),
                Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Haaland land",
                              style: CustomTextStyles.titleMediumSemiBold),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Row(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(" Weight",
                                          style: CustomTextStyles
                                              .labelLargePoppinsBlack900_1),
                                      SizedBox(height: 4.v),
                                      Text("72 kg",
                                          style: theme.textTheme.labelMedium)
                                    ]),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Height",
                                              style: CustomTextStyles
                                                  .labelLargePoppinsBlack900_1),
                                          SizedBox(height: 2.v),
                                          Text("5’8 ft",
                                              style:
                                                  theme.textTheme.labelMedium)
                                        ]))
                              ])),
                          SizedBox(height: 25.v),
                          Text("Fitness Level : Intermediate",
                              style:
                                  CustomTextStyles.labelLargePoppinsBlack900_1)
                        ])),
                Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 23.v),
                    color: theme.colorScheme.primaryContainer.withOpacity(1),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: appTheme.black900, width: 15.h),
                        borderRadius: BorderRadiusStyle.roundedBorder42),
                    child: Container(
                        height: 85.adaptSize,
                        width: 85.adaptSize,
                        decoration: AppDecoration.outlineBlack9002.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder42),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 35.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Lvl",
                                            style: theme.textTheme.labelMedium),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("2",
                                                style: CustomTextStyles
                                                    .headlineSmallMedium))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRefresh,
                              height: 85.v,
                              width: 83.h,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.center)
                        ])))
              ]),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 30.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          SizedBox(
                              width: 183.h,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(children: [
                                      Text("Goals Scored",
                                          style: CustomTextStyles
                                              .labelLargePoppinsBlack900),
                                      SizedBox(height: 8.v),
                                      Text("23",
                                          style: CustomTextStyles
                                              .headlineSmallMedium)
                                    ]),
                                    _buildPenaltyS(context,
                                        penaltyS: "Penalty’s", nine: "09")
                                  ])),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 170.h,
                                  margin: EdgeInsets.only(left: 13.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(children: [
                                          Text("Trophies",
                                              style: CustomTextStyles
                                                  .labelLargePoppinsBlack900),
                                          SizedBox(height: 7.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.h),
                                                  child: Text("03",
                                                      style: CustomTextStyles
                                                          .headlineSmallMedium)))
                                        ]),
                                        _buildPenaltyS(context,
                                            penaltyS: "Penalty’s", nine: "09")
                                      ])))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(top: 27.v, bottom: 45.v),
                            child: Column(children: [
                              Text("Match won",
                                  style: CustomTextStyles
                                      .labelLargePoppinsBlack900),
                              SizedBox(height: 12.v),
                              Text("32/53",
                                  style: CustomTextStyles.headlineSmallMedium)
                            ]))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildDashboard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Dashboard", style: CustomTextStyles.titleMediumSemiBold18),
          CustomImageView(
              imagePath: ImageConstant.imgNotoV1Information,
              height: 17.adaptSize,
              width: 17.adaptSize,
              margin: EdgeInsets.only(top: 5.v, bottom: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildLineThirtyTwo1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 33.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 11.h, right: 17.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildLineThirtyThree(context),
                            Spacer(flex: 25),
                            _buildLineThirtyThree(context),
                            Spacer(flex: 27),
                            _buildLineThirtyThree(context),
                            Container(
                                height: 152.v,
                                width: 44.h,
                                margin: EdgeInsets.only(left: 15.h),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 152.v,
                                              child: VerticalDivider(
                                                  width: 1.h, thickness: 1.v))),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 17.h),
                                              child: SizedBox(
                                                  height: 137.v,
                                                  child: VerticalDivider(
                                                      width: 5.h,
                                                      thickness: 5.v,
                                                      color: appTheme
                                                          .lightGreen300)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              width: 44.h,
                                              margin: EdgeInsets.only(top: 4.v),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 15.h,
                                                  vertical: 1.v),
                                              decoration: AppDecoration
                                                  .fillOnPrimaryContainer
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder5),
                                              child: Text("3hrs ",
                                                  style: CustomTextStyles
                                                      .nunitoSansPrimaryContainer))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle152,
                                          height: 3.v,
                                          width: 6.h,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 17.v))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: _buildLineThirtyThree(context)),
                            Spacer(flex: 23),
                            _buildLineThirtyThree(context),
                            Spacer(flex: 23),
                            _buildLineThirtyThree(context)
                          ]))),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mon",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900),
                        Text("Tue",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900),
                        Text("Wen",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900),
                        Text("Thu",
                            style: CustomTextStyles.labelMediumNunitoSans),
                        Text("Fri",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900),
                        Text("Sat",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900),
                        Text("Sun",
                            style:
                                CustomTextStyles.labelMediumNunitoSansBlack900)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildWeeklyChallenges(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 23.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return WeeklychallengesItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 23.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: CustomSearchView(
                      controller: searchController, hintText: "Search")),
              CustomImageView(
                  imagePath: ImageConstant.imgMenu,
                  height: 12.v,
                  width: 25.h,
                  margin: EdgeInsets.only(left: 23.h, top: 13.v, bottom: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildTournamentMatches(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 13.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 19.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return TournamentmatchesItemWidget();
            }));
  }

  /// Common widget
  Widget _buildPenaltyS(
    BuildContext context, {
    required String penaltyS,
    required String nine,
  }) {
    return Column(children: [
      Text(penaltyS,
          style: CustomTextStyles.labelLargePoppinsBlack900
              .copyWith(color: appTheme.black900)),
      SizedBox(height: 6.v),
      Text(nine,
          style: CustomTextStyles.headlineSmallMedium
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildLineThirtyThree(BuildContext context) {
    return SizedBox(
        height: 152.v,
        width: 5.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  height: 152.v,
                  child: VerticalDivider(width: 1.h, thickness: 1.v))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 76.v,
                  child: VerticalDivider(
                      width: 5.h, thickness: 5.v, color: appTheme.indigo400)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
