import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_checkbox_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool englishName = false;

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 48.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgSsipLogo1,
                          height: 155.v,
                          width: 166.h),
                      Spacer(),
                      CustomTextFormField(
                          controller: userNameController, hintText: "Username"),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 13.v, 19.h, 11.v),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFluenteyeoff16regular,
                                  height: 26.adaptSize,
                                  width: 26.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 50.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 24.h, top: 14.v, bottom: 14.v)),
                      SizedBox(height: 9.v),
                      _buildLoginRow(context),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          text: "Log In",
                          margin: EdgeInsets.symmetric(horizontal: 30.h)),
                      SizedBox(height: 29.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Don’t have an account ? ",
                                    style: CustomTextStyles
                                        .bodySmallPoppinsBlack90012),
                                TextSpan(
                                    text: "Sign up",
                                    style: CustomTextStyles
                                        .bodySmallPoppinsIndigo400
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 14.v),
                      Text("OR",
                          style: CustomTextStyles.bodySmallPoppinsBlack90012_1),
                      SizedBox(height: 17.v),
                      Text("Login with",
                          style: CustomTextStyles.bodySmallPoppinsBlack90012_1),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 91.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLogosFacebook,
                                    height: 30.v,
                                    width: 32.h),
                                Spacer(flex: 50),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFlatColorIconsGoogle,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize),
                                Spacer(flex: 50),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCloseGray800,
                                    height: 32.v,
                                    width: 28.h)
                              ])),
                      SizedBox(height: 52.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomCheckboxButton(
                  text: "Remember Me",
                  value: englishName,
                  textStyle: CustomTextStyles.bodySmallPoppinsGray700,
                  onChange: (value) {
                    englishName = value;
                  })),
          Text("Forgot Password",
              style: CustomTextStyles.bodySmallPoppinsGray700)
        ]));
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createAccountScreen);
  }
}
