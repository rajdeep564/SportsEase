import '../academy_joining_screen/widgets/healthdetails_item_widget.dart';
import '../academy_joining_screen/widgets/interests_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:rajdeep_singh_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_checkbox_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_drop_down.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_floating_text_field.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_text_form_field.dart';

class AcademyJoiningScreen extends StatelessWidget {
  AcademyJoiningScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool termsAndConditions = false;

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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 18.v),
            child: Column(
              children: [
                SizedBox(height: 28.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 27.h,
                        right: 27.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Personal Details ",
                              style: CustomTextStyles.titleSmallMedium,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildPersonalDetails(context),
                          SizedBox(height: 6.v),
                          CustomFloatingTextField(
                            controller: phoneNumberController,
                            labelText: "Phone number",
                            labelStyle: CustomTextStyles.labelMediumGray700,
                            hintText: "Phone number",
                            textInputType: TextInputType.phone,
                          ),
                          SizedBox(height: 7.v),
                          _buildHealthDetails(context),
                          SizedBox(height: 41.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Address  ",
                              style: CustomTextStyles.titleSmallMedium,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildAddressDetails(context),
                          SizedBox(height: 7.v),
                          _buildAreaDetails(context),
                          SizedBox(height: 6.v),
                          CustomTextFormField(
                            decoration: InputDecoration(
                                errorStyle: TextStyle(fontSize: 10.0)),
                            controller: pincodeController,
                            hintText: "Pincode",
                            hintStyle: CustomTextStyles.labelMediumGray700,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.number,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 17.h),
                          ),
                          SizedBox(height: 41.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Area of Interest ",
                              style: CustomTextStyles.titleSmallMedium,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 15.v, 18.h, 15.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgVectorGray700,
                                height: 5.v,
                                width: 10.h,
                              ),
                            ),
                            hintText: "Select Sport",
                            items: dropdownItemList,
                            onChanged: (value) {},
                          ),
                          SizedBox(height: 42.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Please Select  5 prefered sports ",
                              style: CustomTextStyles.titleSmallMedium,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          _buildInterests(context),
                          SizedBox(height: 71.v),
                          _buildTermsAndConditions(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSubmitButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Fill the Details",
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
  Widget _buildHealthDetails(BuildContext context) {
    return SizedBox(
      height: 49.v,
      child: ListView.separated(
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
          return HealthdetailsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressDetails(BuildContext context) {
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
              width: 170.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text(
                "Flat / House no / Floor /Building *",
                style: CustomTextStyles.labelMediumOnError,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAreaDetails(BuildContext context) {
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
              width: 117.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text(
                "Area / Sector /Locality",
                style: CustomTextStyles.labelMediumGray700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterests(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        runSpacing: 9.v,
        spacing: 9.h,
        children: List<Widget>.generate(8, (index) => InterestsItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildTermsAndConditions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: CustomCheckboxButton(
        text:
            "I accept the terms and conditions of Academy. Action will be taken if done anything wrong",
        isExpandedText: true,
        value: termsAndConditions,
        onChange: (value) {
          termsAndConditions = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Submit",
      margin: EdgeInsets.only(
        left: 43.h,
        right: 47.h,
        bottom: 29.v,
      ),
    );
  }
}
