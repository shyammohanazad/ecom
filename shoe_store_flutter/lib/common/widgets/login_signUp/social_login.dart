import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: dark ? MyAppColors.grey : MyAppColors.black,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image(
                  width: MyAppSizes.iconSizeMd,
                  height: MyAppSizes.iconSizeMd,
                  image: AssetImage(MyAppImageStrings.googleLogo),
                ),
              ),
            ),
            Text('Google'),
          ],
        ),
        SizedBox(width: MyAppSizes.spaceBtwItems),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: dark ? MyAppColors.grey : MyAppColors.black,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image(
                  width: MyAppSizes.iconSizeMd,
                  height: MyAppSizes.iconSizeMd,
                  image: AssetImage(MyAppImageStrings.facebookLogo),
                ),
              ),
            ),
            Text('Facebook'),
          ],
        ),
      ],
    );
  }
}
