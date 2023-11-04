import '../near_by_academy_screen/widgets/academyprofilelist_item_widget.dart';
import '../near_by_academy_screen/widgets/userlocationlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_search_view.dart';

class NearByAcademyScreen extends StatelessWidget {
  NearByAcademyScreen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 34.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                      bottom: 29.v,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Near by Academy",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 232.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 58.h),
                            child: CustomSearchView(
                              controller: searchController,
                              hintText: "Search",
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        SizedBox(height: 57.v),
                        _buildAcademyProfileList(context),
                        SizedBox(height: 51.v),
                        _buildSuitableAcademyRow(context),
                        SizedBox(height: 37.v),
                        _buildUserLocationList(context),
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
  Widget _buildAcademyProfileList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 29.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return AcademyprofilelistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildSuitableAcademyRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Suitable Academy",
            style: CustomTextStyles.titleMediumSemiBold18,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Text(
              "based on your sports preferences",
              style: CustomTextStyles.bodySmallPoppins,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotoV1Information,
            height: 17.adaptSize,
            width: 17.adaptSize,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 3.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserLocationList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 29.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return UserlocationlistItemWidget();
      },
    );
  }
}
