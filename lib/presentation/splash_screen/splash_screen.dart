import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';
import 'package:rajdeep_singh_s_application5/widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 515.v,
                width: 374.h,
              ),
              SizedBox(height: 25.v),
              Container(
                width: 334.h,
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 21.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Join the ",
                        style: theme.textTheme.headlineSmall,
                      ),
                      TextSpan(
                        text: "Sports Community \nwith us !\n",
                        style: CustomTextStyles.headlineSmallIndigo800,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(
                  left: 50.h,
                  right: 45.h,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur \nCursus senectus pulvinar amet arcu quam non ut ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ),
              SizedBox(height: 38.v),
              CustomElevatedButton(
                text: "Let’s Get Started",
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 35.h,
                ),
              ),
              SizedBox(height: 43.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account ? ",
                      style: CustomTextStyles.bodySmallPoppinsBlack90012,
                    ),
                    TextSpan(
                      text: "Sign up",
                      style:
                          CustomTextStyles.bodySmallPoppinsBluegray500.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
