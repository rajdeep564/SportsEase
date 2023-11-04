import 'package:flutter/material.dart';
import 'package:rajdeep_singh_s_application5/presentation/splash_screen/splash_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/guni_academy_screen/guni_academy_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/academy_joining_screen/academy_joining_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/near_by_academy_screen/near_by_academy_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/coaches_screen/coaches_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/create_account_screen/create_account_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/notifications_tab_container_screen/notifications_tab_container_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/career_screen/career_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/training_screen/training_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/support_one_screen/support_one_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/support_screen/support_screen.dart';
import 'package:rajdeep_singh_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String guniAcademyScreen = '/guni_academy_screen';

  static const String academyJoiningScreen = '/academy_joining_screen';

  static const String nearByAcademyScreen = '/near_by_academy_screen';

  static const String coachesScreen = '/coaches_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String notificationsOnePage = '/notifications_one_page';

  static const String notificationsPage = '/notifications_page';

  static const String notificationsTabContainerScreen =
      '/notifications_tab_container_screen';

  static const String careerScreen = '/career_screen';

  static const String trainingScreen = '/training_screen';

  static const String supportOneScreen = '/support_one_screen';

  static const String supportScreen = '/support_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    guniAcademyScreen: (context) => GuniAcademyScreen(),
    academyJoiningScreen: (context) => AcademyJoiningScreen(),
    nearByAcademyScreen: (context) => NearByAcademyScreen(),
    coachesScreen: (context) => CoachesScreen(),
    homeOneContainerScreen: (context) => HomeOneContainerScreen(),
    signUpScreen: (context) => SignUpScreen(),
    createAccountScreen: (context) => CreateAccountScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    notificationsTabContainerScreen: (context) =>
        NotificationsTabContainerScreen(),
    careerScreen: (context) => CareerScreen(),
    trainingScreen: (context) => TrainingScreen(),
    supportOneScreen: (context) => SupportOneScreen(),
    supportScreen: (context) => SupportScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
