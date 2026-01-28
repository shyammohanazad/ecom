import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAppSearchContainer extends StatelessWidget {
  const MyAppSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, this.padding = const EdgeInsets.symmetric(horizontal: MyAppSizes.defaultSpacing),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: padding,
      child: Container(
        width: MyAppDeviceUtility.getScreenWidth(context),
        padding: EdgeInsets.all(MyAppSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                    ? MyAppColors.darkerGrey
                    : MyAppColors.white
              : Colors.transparent,
          borderRadius: showBorder
              ? BorderRadius.circular(MyAppSizes.cardRadiusLg)
              : null,
          border: Border.all(color: MyAppColors.grey),
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: MyAppColors.darkGrey),
            SizedBox(width: MyAppSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
