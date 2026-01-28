import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          dark ? MyAppImageStrings.darkAppLogo : MyAppImageStrings.lightAppLogo,
          height: 150,
        ),
        Text(
          MyAppTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MyAppSizes.sm),
        Text(
          MyAppTextStrings.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
