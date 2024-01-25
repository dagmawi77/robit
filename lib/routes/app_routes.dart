import 'package:flutter/material.dart';
import 'package:robit/presentation/start_screen/start_screen.dart';
import 'package:robit/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:robit/presentation/log_in_screen/log_in_screen.dart';
import 'package:robit/presentation/homepage_screen/homepage_screen.dart';
import 'package:robit/presentation/profile_screen/profile_screen.dart';
import 'package:robit/presentation/my_account_screen/my_account_screen.dart';
import 'package:robit/presentation/npk_status_screen/npk_status_screen.dart';
import 'package:robit/presentation/nitrogen_tab_container_screen/nitrogen_tab_container_screen.dart';
import 'package:robit/presentation/humuidity_ph_screen/humuidity_ph_screen.dart';
import 'package:robit/presentation/analyzed_data_screen/analyzed_data_screen.dart';
import 'package:robit/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String logInScreen = '/log_in_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String profileScreen = '/profile_screen';

  static const String myAccountScreen = '/my_account_screen';

  static const String npkStatusScreen = '/npk_status_screen';

  static const String nitrogenPage = '/nitrogen_page';

  static const String nitrogenTabContainerScreen =
      '/nitrogen_tab_container_screen';

  static const String phosphorusPage = '/phosphorus_page';

  static const String photassiumPage = '/photassium_page';

  static const String humuidityPhScreen = '/humuidity_ph_screen';

  static const String phPage = '/ph_page';

  static const String humidityPage = '/humidity_page';

  static const String analyzedDataScreen = '/analyzed_data_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        signUpScreen: SignUpScreen.builder,
        logInScreen: LogInScreen.builder,
        homepageScreen: HomepageScreen.builder,
        profileScreen: ProfileScreen.builder,
        myAccountScreen: MyAccountScreen.builder,
        npkStatusScreen: NpkStatusScreen.builder,
        nitrogenTabContainerScreen: NitrogenTabContainerScreen.builder,
        humuidityPhScreen: HumuidityPhScreen.builder,
        analyzedDataScreen: AnalyzedDataScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartScreen.builder
      };
}
