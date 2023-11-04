import '../training_screen/widgets/clienttestimonials_item_widget.dart';
import '../training_screen/widgets/drillstutorial_item_widget.dart';
import '../training_screen/widgets/recentorders_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 17.h, right: 17.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Upcoming Sessions",
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 38.v),
                              _buildRecentOrders(context),
                              SizedBox(height: 41.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("Sessions  you Completed",
                                      style: theme.textTheme.titleLarge)),
                              SizedBox(height: 37.v),
                              _buildClientTestimonials(context),
                              SizedBox(height: 39.v),
                              Text("Drills tutorial",
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 15.v),
                              _buildDrillsTutorial(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 17.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Drills & Sessions  "));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 14.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 19.v);
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return RecentordersItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 7.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 18.v);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ClienttestimonialsItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildDrillsTutorial(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 41.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return DrillstutorialItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
