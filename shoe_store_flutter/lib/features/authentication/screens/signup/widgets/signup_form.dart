import 'package:ecomm_store_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecomm_store_app/features/authentication/screens/signup/widgets/terms&condition.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Form(
      child: Column(
        children: [
          // FirstName & LastName Row
          Row(
            children: [
              // FirstName TextField
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MyAppTextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              SizedBox(width: MyAppSizes.spaceBtwInputFields),

              // LastName TextField.
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MyAppTextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MyAppSizes.spaceBtwInputFields),
          // UserName
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MyAppTextStrings.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MyAppTextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwInputFields),

          // PhoneNumber
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MyAppTextStrings.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: InputDecoration(
              labelText: MyAppTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwInputFields),

          // Terms& Condition checkbox
          TermsAndConditionsCheckBox(),
          SizedBox(height: MyAppSizes.spaceBtwSections),

          // SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => VerifyEmailScreen());
              },
              child: Text(MyAppTextStrings.createNewAccount),
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwSections),
          // divider
         
        ],
      ),
    );
  }
}
