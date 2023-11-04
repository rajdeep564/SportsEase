import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          userName: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Guni Academy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.guniAcademyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Academy Joining",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.academyJoiningScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Near by academy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.nearByAcademyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Coaches",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.coachesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Home One - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Create account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Enter OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Create new Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Notifications - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.notificationsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Career",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.careerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Training",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trainingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Support One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supportOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supportScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
