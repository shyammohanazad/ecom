import 'package:ecomm_store_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:flutter/material.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MyAppDeviceUtility.getAppBarHeight(),
      right: MyAppSizes.defaultSpacing,
      child: TextButton(
        onPressed: () {
          OnboardingController.instance.skiptPage();
        },
        child: Text('Skip'),
      ),
    );
  }
}
