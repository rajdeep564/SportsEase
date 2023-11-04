import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_text_form_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
            padding: EdgeInsets.only(
              left: 16.h,
              top: 64.v,
              right: 16.h,
            ),
            child: Column(
              children: [
                Text(
                  "Create a new Password",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 249.h,
                  child: Text(
                    "Create a Password of  more than 6 letters\nand words.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
                  ),
                ),
                SizedBox(height: 52.v),
                CustomTextFormField(
                  controller: newpasswordController,
                  hintText: "New password",
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 12.v),
                CustomTextFormField(
                  controller: confirmpasswordController,
                  hintText: "Confirm password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 48.v),
                CustomElevatedButton(
                  text: "Continue",
                  margin: EdgeInsets.only(
                    left: 31.h,
                    right: 27.h,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
