import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: MyAppTextStrings.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: MyAppTextStrings.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MyAppColors.white : MyAppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? MyAppColors.white
                      : MyAppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: MyAppTextStrings.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: MyAppTextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MyAppColors.white : MyAppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? MyAppColors.white
                      : MyAppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
