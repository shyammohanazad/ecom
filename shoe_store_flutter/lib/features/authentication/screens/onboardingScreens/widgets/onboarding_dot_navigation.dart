import 'package:ecomm_store_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyAppDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: MyAppSizes.defaultSpacing,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyAppColors.lightGrey : MyAppColors.darkGrey,
          dotHeight: 6,
        ),
      ),
    );
  }
}
