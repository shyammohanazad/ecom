import 'package:ecomm_store_app/common/widgets/login_signUp/success_screen.dart';
import 'package:ecomm_store_app/features/authentication/screens/login/login_screen.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give default equal space on all sides
        child: Padding(
          padding: EdgeInsetsGeometry.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              // Hero Image
              Image(
                image: AssetImage(MyAppImageStrings.onboardingImage1),
                width: MyAppHelperFunctions.screenWidth() * 0.6,
              ),

              // Title and Subtitle
              Text(
                MyAppTextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MyAppSizes.spaceBtwItems),
              Text(
                'support@azdise.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MyAppSizes.spaceBtwItems),
              Text(
                MyAppTextStrings.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MyAppSizes.spaceBtwSections),

              // Continue Button
              SizedBox(
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: MyAppImageStrings.onboardingImage1,
                      title: MyAppTextStrings.yourAccountCreatedTitle,
                      subtitle: MyAppTextStrings.yourAccountCreatedSubtitle,
                      onPressed: () => Get.to(() => LoginScreen()),
                    ),
                  ),
                  child: Text(MyAppTextStrings.tcontinue),
                ),
              ),
              // Resend Emai Button
              SizedBox(
                child: TextButton(
                  onPressed: () {},
                  child: Text(MyAppTextStrings.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


