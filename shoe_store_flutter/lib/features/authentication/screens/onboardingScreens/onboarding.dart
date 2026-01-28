import 'package:ecomm_store_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecomm_store_app/features/authentication/screens/onboardingScreens/widgets/onboardingSkip_button.dart';
import 'package:ecomm_store_app/features/authentication/screens/onboardingScreens/widgets/onboarding_dot_navigation.dart';
import 'package:ecomm_store_app/features/authentication/screens/onboardingScreens/widgets/onboarding_next_button.dart';
import 'package:ecomm_store_app/features/authentication/screens/onboardingScreens/widgets/onboarding_page.dart';

import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: MyAppImageStrings.onboardingImage1,
                title: MyAppTextStrings.onboardingTitle1,
                subTitle: MyAppTextStrings.onboardingSubtitle1,
              ),
              OnboardingPage(
                image: MyAppImageStrings.onboardingImage2,
                title: MyAppTextStrings.onboardingTitle2,
                subTitle: MyAppTextStrings.onboardingSubtitle2,
              ),
              OnboardingPage(
                image: MyAppImageStrings.onboardingImage3,
                title: MyAppTextStrings.onboardingTitle3,
                subTitle: MyAppTextStrings.onboardingSubtitle3,
              ),
            ],
          ),

          // Skip Button
          OnboardingSkipButton(),

          // Dot Navigation SmoothIndicator
          OnboardingDotNavigation(),

          // Circular button
          OnboardingNextButton(),
        ],
      ),
    );
  }
}
