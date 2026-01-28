import 'package:ecomm_store_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForegtPassword extends StatelessWidget {
  const ForegtPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              MyAppTextStrings.forgetPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: MyAppSizes.spaceBtwItems),
            Text(
              MyAppTextStrings.forgetPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: MyAppSizes.spaceBtwSections * 2),
            // Email field
            TextFormField(
              decoration: InputDecoration(
                labelText: MyAppTextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            SizedBox(height: MyAppSizes.spaceBtwSections),
            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => ResetPassword());
                },
                child: Text(MyAppTextStrings.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
