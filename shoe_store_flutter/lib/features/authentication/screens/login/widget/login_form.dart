import 'package:ecomm_store_app/features/authentication/screens/password_configuration/foregt_password.dart';
import 'package:ecomm_store_app/features/authentication/screens/signup/signup.dart';
import 'package:ecomm_store_app/features/shop/screens/home/shop_home.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MyAppSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email TextField
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                label: Text(MyAppTextStrings.email),
              ),
            ),
            SizedBox(height: MyAppSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text(MyAppTextStrings.password),
                suffixIcon: Icon(Iconsax.eye_slash1),
              ),
            ),
            SizedBox(height: MyAppSizes.spaceBtwInputFields / 2),

            // Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me Checkbox
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(MyAppTextStrings.rememberMe),
                  ],
                ),

                // Forgot Passowrd
                TextButton(
                  onPressed: () {
                    // Get.to(SignupScreen());
                    Get.to(() => ForegtPassword());
                  },
                  child: Text(MyAppTextStrings.forgetPassword),
                ),
              ],
            ),

            SizedBox(height: MyAppSizes.spaceBtwSections),

            // SigIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => HomePage());
                },
                child: Text(MyAppTextStrings.signIn),
              ),
            ),
            SizedBox(height: MyAppSizes.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => SignupScreen());
                },
                child: Text(MyAppTextStrings.createNewAccount),
              ),
            ),
            // SizedBox(height: MyAppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
