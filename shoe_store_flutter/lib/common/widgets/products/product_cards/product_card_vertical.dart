import 'package:ecomm_store_app/common/icons/my_circular_icon.dart';
import 'package:ecomm_store_app/common/styles/my_shadows_style.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/images/my_rounded_images.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_price_text.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_title.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/produc_image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    // Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowsStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MyAppSizes.productImageRadius),
          color: dark ? MyAppColors.darkGrey : MyAppColors.containerLight,
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist Button, Discount Tag
            MyRoundedCountainer(
              height: 180,
              padding: EdgeInsets.all(MyAppSizes.sm),
              backgroundColor: dark
                  ? MyAppColors.darkGrey
                  : MyAppColors.containerLight,
              child: Stack(
                children: [
                  // Thumbnail Image
                  MyRoundedImage(
                    imageUrl: MyProductAssets.product1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: MyRoundedCountainer(
                      radius: MyAppSizes.sm,
                      backgroundColor: MyAppColors.secondary.withValues(
                        alpha: 0.8,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: MyAppSizes.sm,
                        vertical: MyAppSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: MyAppColors.black),
                      ),
                    ),
                  ),

                  // favoriteIcon Button / wishlist Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MyAppSizes.spaceBtwItems / 2),

            // Details
            Padding(
              padding: EdgeInsets.only(left: MyAppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyProductTitle(
                    title: 'Green Nike Shoes',
                    smallSize: true,
                    maxLines: 2,
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwItems / 2),

                  // Brand Name
                  MyBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            // Add spacer() to keep the height of each box same when product-title text has different number of line (eg one is having 1 and another one is having 2)
            Spacer(),

            // Price and AddToCartIcon row
            Row(
              children: [
                //Price
                Padding(
                  padding: const EdgeInsets.only(left: MyAppSizes.sm),
                  child: MyProductPriceText(price: '35.0'),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: MyAppColors.darkerGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MyAppSizes.cardRadiusMd),
                      bottomRight: Radius.circular(MyAppSizes.cardRadiusMd),
                    ),
                  ),
                  child: SizedBox(
                    width: MyAppSizes.iconSizeLg * 1.2,
                    height: MyAppSizes.iconSizeLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: MyAppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
