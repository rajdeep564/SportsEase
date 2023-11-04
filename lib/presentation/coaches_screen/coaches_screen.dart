import '../coaches_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';

class CoachesScreen extends StatelessWidget {
  const CoachesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Column(children: [
                      SizedBox(
                          height: 722.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildAcademyCoaches(context),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28.h, vertical: 21.v),
                                        decoration:
                                            AppDecoration.fillPrimaryContainer,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text(
                                                          "Enzo Fernandes",
                                                          style: theme.textTheme
                                                              .titleLarge))),
                                              SizedBox(height: 24.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16.h, right: 11.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle17554x55,
                                                            height: 98.v,
                                                            width: 95.h,
                                                            radius: BorderRadius
                                                                .circular(
                                                                    10.h)),
                                                        Container(
                                                            width: 168.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 42.h,
                                                                    top: 28.v,
                                                                    bottom:
                                                                        22.v),
                                                            child: Text(
                                                                "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet . ",
                                                                maxLines: 3,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .bodySmallBlack900))
                                                      ])),
                                              SizedBox(height: 25.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h, right: 16.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                            width: 78.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMaterialSymbolsWork,
                                                                      height:
                                                                          21.v,
                                                                      width:
                                                                          20.h),
                                                                  Text(
                                                                      " Age : 34",
                                                                      style: CustomTextStyles
                                                                          .bodySmallPoppinsBlack90012_1)
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 2.v),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgTwitter,
                                                                      height: 18
                                                                          .adaptSize,
                                                                      width: 18
                                                                          .adaptSize),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 7
                                                                              .h),
                                                                      child: Text(
                                                                          "Football Head Coach",
                                                                          style:
                                                                              CustomTextStyles.bodySmallPoppinsBlack90012_1))
                                                                ]))
                                                      ])),
                                              SizedBox(height: 14.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 23.h),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgWhatsapp,
                                                                height: 12
                                                                    .adaptSize,
                                                                width: 12
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            5.v,
                                                                        bottom:
                                                                            3.v)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            7.h,
                                                                        top: 1
                                                                            .v),
                                                                child: Text(
                                                                    "+91 945XX XXXXX",
                                                                    style: CustomTextStyles
                                                                        .bodySmallPoppinsBlack90012_1)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgHeroiconsStarSolid,
                                                                height: 21.v,
                                                                width: 20.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 23
                                                                            .h)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 11
                                                                            .h,
                                                                        top: 3
                                                                            .v),
                                                                child: Text(
                                                                    "10 + Year of Experience",
                                                                    style: CustomTextStyles
                                                                        .bodySmallPoppinsBlack90012_1))
                                                          ]))),
                                              SizedBox(height: 34.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.h),
                                                      child: Text("About ",
                                                          style: CustomTextStyles
                                                              .titleMediumSemiBold))),
                                              SizedBox(height: 9.v),
                                              Container(
                                                  width: 292.h,
                                                  margin: EdgeInsets.only(
                                                      left: 16.h, right: 25.h),
                                                  child: Text(
                                                      "Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas varius. Eget nullam auctor elementum cursus neque ornare nisl aenean suspendisse. Eget adipiscing porttitor lacus quam nec turpis. Lorem ipsum dolor sit amet consectetur. Cursus senectus pulvinar amet arcu quam non. Ut non magna non quam vitae id blandit egestas varius.  ",
                                                      maxLines: 9,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900)),
                                              SizedBox(height: 54.v)
                                            ]))),
                                _buildUserProfile(context)
                              ])),
                      SizedBox(height: 18.v),
                      Divider(
                          color: appTheme.gray20001,
                          indent: 15.h,
                          endIndent: 17.h)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 36.h, top: 18.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Coaches"));
  }

  /// Section Widget
  Widget _buildAcademyCoaches(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 21.v),
            decoration: AppDecoration.fillPrimary,
            child: Text("Academy coaches",
                style: CustomTextStyles.titleMediumPrimaryContainer)));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SizedBox(
            height: 721.v,
            child: ListView.separated(
                padding: EdgeInsets.only(left: 28.h, top: 63.v, bottom: 566.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 40.h);
                },
                itemCount: 7,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
