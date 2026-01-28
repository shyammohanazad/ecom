import 'package:ecomm_store_app/features/authentication/screens/onboardingScreens/onboarding.dart';
import 'package:ecomm_store_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      title: 'ecomm_store_app',
      theme: MyAppThemeManager.lightTheme,
      darkTheme: MyAppThemeManager.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
