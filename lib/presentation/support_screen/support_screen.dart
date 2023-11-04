import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 36.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      right: 24.h,
                    ),
                    child: _buildHelpAndSupport(
                      context,
                      helpAndSupportText: "About SportEase ",
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      right: 24.h,
                    ),
                    child: _buildHelpAndSupport(
                      context,
                      helpAndSupportText: "Help and support ",
                    ),
                  ),
                  SizedBox(height: 34.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      right: 24.h,
                    ),
                    child: _buildHelpAndSupport(
                      context,
                      helpAndSupportText: "Mail us your concerns",
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "Share  the SportsEase",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 485.v),
                  Divider(
                    color: appTheme.gray20001,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Support",
      ),
    );
  }

  /// Common widget
  Widget _buildHelpAndSupport(
    BuildContext context, {
    required String helpAndSupportText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            helpAndSupportText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 25.adaptSize,
          width: 25.adaptSize,
        ),
      ],
    );
  }
}
