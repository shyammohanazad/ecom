
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/images/my_circular_image.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_price_text.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_title.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/enums.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyProductMetaData extends StatelessWidget {
  const MyProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            // Sale Tag
            MyRoundedCountainer(
              radius: MyAppSizes.sm,
              backgroundColor: MyAppColors.secondary.withValues(alpha: 0.8),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MyAppColors.black),),
            ),

            SizedBox(width: MyAppSizes.spaceBtwItems,),

            // Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough ),),
            SizedBox(width: MyAppSizes.spaceBtwItems,),
            MyProductPriceText(price: '175', isLarge: true,),
          ],
        ),
 SizedBox(width: MyAppSizes.spaceBtwItems / 1.5,),

            // Title
MyProductTitle(title: 'Green Nike Sports Shirt', smallSize: false, maxLines: 3),
 SizedBox(width: MyAppSizes.spaceBtwItems / 1.5,),

            // Stock Status
Row(children: [
  MyProductTitle(title: 'Status', smallSize: true, maxLines: 1),
  SizedBox(width: MyAppSizes.spaceBtwItems),
   Text('In Stock', style: Theme.of(context).textTheme.titleMedium ),
],),

SizedBox(width: MyAppSizes.spaceBtwItems / 1.5),


            // Brand

            Row(
              children: [MyCircularImage(image: MyAppImageStrings.shoeIcon, width: 32, height: 32, overlayColor: dark ? MyAppColors.white : MyAppColors.darkerGrey,),
                MyBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSize.medium,),
              ],
            )
      ],
    );
  }
}