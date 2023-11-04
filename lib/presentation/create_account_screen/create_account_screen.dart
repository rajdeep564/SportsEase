import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/presentation/sign_up_screen/sign_up_screen.dart';
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
                Text(
                  "Create new account",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 16.v),
                Text(
                  "Fill up the information below to Create account ",
                  style: CustomTextStyles.bodySmallPoppinsBlack90012_1,
                ),
                SizedBox(height: 64.v),
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
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 14.0)),
      controller: nameController,
      hintText: "Name",
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Phone number",
      textInputType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your phone number';
        }
        if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
          return 'Please enter a valid 10-digit phone number';
        }
        return null;
      },
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 10.0)),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        }
        if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 10.0)),
    );
  }

  /// Section Widget
  Widget _buildDob(BuildContext context) {
    return CustomTextFormField(
      controller: dobController,
      hintText: "DOB",
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 10.0)),
    );
  }


  Widget _buildGender(BuildContext context) {
    return CustomTextFormField(
      controller: genderController,
      hintText: "Gender",
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 10.0)),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
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
      decoration: InputDecoration(errorStyle: TextStyle(fontSize: 10.0)),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return SignUpScreen();
          }));
        }
      },
      margin: EdgeInsets.only(
        left: 31.h,
        right: 29.h,
      ),
    );
  }
}
