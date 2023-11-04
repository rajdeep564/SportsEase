import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_text_form_field.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 53.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 11.v),
                Text(
                  "Create new account",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 16.v),
                Text(
                  "Fill up the information below to Create account ",
                  style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
                ),
                SizedBox(height: 72.v),
                _buildName(context),
                SizedBox(height: 12.v),
                _buildPhoneNumber(context),
                SizedBox(height: 12.v),
                _buildEmail(context),
                SizedBox(height: 12.v),
                _buildDob(context),
                SizedBox(height: 12.v),
                _buildGender(context),
                SizedBox(height: 12.v),
                _buildPassword(context),
                SizedBox(height: 79.v),
                _buildSignUp(context),
                SizedBox(height: 33.v),
                SizedBox(
                  width: 206.h,
                  child: Text(
                    "By clicking sign up you agree to following\nterms and conditions",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallPoppinsBlack90010,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "Name",
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Phone number",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildDob(BuildContext context) {
    return CustomTextFormField(
      controller: dobController,
      hintText: "DOB",
    );
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return CustomTextFormField(
      controller: genderController,
      hintText: "Gender",
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 13.v, 19.h, 11.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgFluenteyeoff16regular,
          height: 26.adaptSize,
          width: 26.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.only(
        left: 24.h,
        top: 14.v,
        bottom: 14.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      margin: EdgeInsets.only(
        left: 31.h,
        right: 29.h,
      ),
    );
  }
}
