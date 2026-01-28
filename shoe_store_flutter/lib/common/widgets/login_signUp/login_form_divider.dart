import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyAppColors.darkGrey : MyAppColors.black,
          ),
        ),
        SizedBox(width: MyAppSizes.spaceBtwItems),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        SizedBox(width: MyAppSizes.spaceBtwItems),
        Flexible(
          child: Divider(
            color: dark ? MyAppColors.darkGrey : MyAppColors.black,
          ),
        ),
      ],
    );
  }
}
