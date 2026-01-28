import 'package:ecomm_store_app/common/styles/spacing_styles.dart';
import 'package:ecomm_store_app/features/shop/screens/checkout/checkout.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySuccessScreen extends StatelessWidget {
  const MySuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: MyAppSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Image(
              image: AssetImage(image),
              width: MyAppHelperFunctions.screenWidth() * 0.6,
            ),
            SizedBox(height: MyAppSizes.spaceBtwSections),

            // Title & Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MyAppSizes.spaceBtwItems),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MyAppSizes.spaceBtwSections),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => MyCheckoutScreen());
                },
                child: Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
