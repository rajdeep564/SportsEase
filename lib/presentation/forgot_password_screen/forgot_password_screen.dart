import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController mobileNumberController = TextEditingController();

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
                        EdgeInsets.only(left: 16.h, top: 67.v, right: 16.h),
                    child: Column(children: [
                      Text("Forgot Password",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 13.v),
                      SizedBox(
                          width: 201.h,
                          child: Text(
                              "OPT will be sent to your registered email or mobile number",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .bodySmallPoppinsBlack90012_1)),
                      SizedBox(height: 63.v),
                      CustomTextFormField(
                          decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 10.0)),
                          controller: mobileNumberController,
                          hintText: "Enter your email or mobile number",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 93.v),
                      CustomElevatedButton(
                          text: "Next",
                          margin: EdgeInsets.symmetric(horizontal: 29.h),
                          onPressed: () {
                            onTapNext(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the enterOtpScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.enterOtpScreen);
  }
}
