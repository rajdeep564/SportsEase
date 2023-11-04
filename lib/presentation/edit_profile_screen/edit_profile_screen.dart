import '../edit_profile_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_floating_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController addressController = TextEditingController();

  TextEditingController areaSectorLocalityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Personal Details ",
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildPersonalDetails(context),
                  SizedBox(height: 6.v),
                  _buildPhoneNumber(context),
                  SizedBox(height: 7.v),
                  _buildUserProfile(context),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Address  ",
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildAddress(context),
                  SizedBox(height: 7.v),
                  _buildAreaSectorLocality(context),
                  SizedBox(height: 6.v),
                  _buildPincode(context),
                  SizedBox(height: 32.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Please Select  5 prefered sports ",
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 173.v),
                  _buildSave(context),
                  SizedBox(height: 149.v),
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
      title: AppbarSubtitleOne(
        text: "Edit Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonalDetails(BuildContext context) {
    return SizedBox(
      height: 49.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 42.v,
              width: 334.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: appTheme.gray20001,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 14.v,
              width: 46.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "Name",
                style: CustomTextStyles.labelMediumOnError,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return SizedBox(
      height: 49.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 42.v,
              width: 334.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: appTheme.gray20001,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 14.v,
              width: 84.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Text(
                "Phone number",
                style: CustomTextStyles.labelMediumGray700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 49.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 15.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 21.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 17.h,
      ),
      child: CustomFloatingTextField(
        controller: addressController,
        labelText: "Flat / House no / Floor /Building *",
        labelStyle: CustomTextStyles.labelMediumOnError,
        hintText: "Flat / House no / Floor /Building *",
      ),
    );
  }

  /// Section Widget
  Widget _buildAreaSectorLocality(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 17.h,
      ),
      child: CustomFloatingTextField(
        controller: areaSectorLocalityController,
        labelText: "Area / Sector /Locality",
        labelStyle: CustomTextStyles.labelMediumGray700,
        hintText: "Area / Sector /Locality",
      ),
    );
  }

  /// Section Widget
  Widget _buildPincode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 17.h,
      ),
      child: CustomFloatingTextField(
        controller: pincodeController,
        labelText: "Pincode",
        labelStyle: CustomTextStyles.labelMediumGray700,
        hintText: "Pincode",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      margin: EdgeInsets.only(
        left: 18.h,
        right: 17.h,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer_1,
    );
  }
}
