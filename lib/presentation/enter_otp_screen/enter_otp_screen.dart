import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_pin_code_text_field.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 31.h, top: 64.v, right: 31.h),
                child: Column(children: [
                  SizedBox(
                      height: 30.v,
                      width: 135.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("Enter the OTP",
                                style: theme.textTheme.titleLarge)),
                        Align(
                            alignment: Alignment.center,
                            child: Text("Enter the OTP",
                                style: theme.textTheme.titleLarge))
                      ])),
                  SizedBox(height: 16.v),
                  Container(
                      width: 243.h,
                      margin: EdgeInsets.only(left: 41.h, right: 42.h),
                      child: Text(
                          "Please Enter the OTP sent your registered mobile number",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.bodySmallPoppinsBlack90012_1)),
                  SizedBox(height: 47.v),
                  Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  SizedBox(height: 72.v),
                  CustomElevatedButton(
                      text: "Verify OTP",
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      onPressed: () {
                        onTapVerifyOTP(context);
                      }),
                  SizedBox(height: 27.v),
                  Text("Resend OTP",
                      style: CustomTextStyles.bodySmallPoppinsGray700),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the createNewPasswordScreen when the action is triggered.
  onTapVerifyOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createNewPasswordScreen);
  }
}
