import 'package:ecomm_store_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:flutter/material.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: MyAppSizes.defaultSpacing,
      bottom: MyAppDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
