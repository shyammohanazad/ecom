import 'package:ecomm_store_app/common/icons/my_circular_icon.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_price_text.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyIncrementDecrementWidget extends StatelessWidget {
  const MyIncrementDecrementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            MyCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: MyAppSizes.md,
              color: dark ? MyAppColors.white : MyAppColors.black,
              backgroundColor: dark
                  ? MyAppColors.darkGrey
                  : MyAppColors.lightGrey,
            ),
            SizedBox(width: MyAppSizes.spaceBtwItems),
            Text('2', style: Theme.of(context).textTheme.titleSmall),
            SizedBox(width: MyAppSizes.spaceBtwItems),
            MyCircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: MyAppSizes.md,
              color: dark ? MyAppColors.white : MyAppColors.black,
              backgroundColor: dark
                  ? MyAppColors.darkGrey
                  : MyAppColors.lightGrey,
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.profile_delete)),
        MyProductPriceText(price: '256'),
      ],
    );
  }
}
