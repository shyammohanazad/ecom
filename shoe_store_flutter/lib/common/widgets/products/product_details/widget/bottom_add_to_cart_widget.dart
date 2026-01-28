import 'package:ecomm_store_app/common/icons/my_circular_icon.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBottomAddToCartWidget extends StatelessWidget {
  const MyBottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MyAppSizes.defaultSpacing,
        vertical: MyAppSizes.defaultSpacing / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? MyAppColors.darkGrey : MyAppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(MyAppSizes.cardRadiusLg),
          topRight: Radius.circular(MyAppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MyCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: MyAppColors.darkGrey,
                width: 40,
                height: 40,
                color: MyAppColors.white,
              ),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              MyCircularIcon(
                icon: Iconsax.add,
                backgroundColor: MyAppColors.darkGrey,
                width: 40,
                height: 40,
                color: MyAppColors.white,
              ),
            ],
          ),

          // Add to cart Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(MyAppSizes.md),
              backgroundColor: MyAppColors.black,
              side: BorderSide(color: MyAppColors.black),
            ),
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
