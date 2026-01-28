import 'package:ecomm_store_app/common/widgets/images/my_rounded_images.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_brand_title_with_verified_icon.dart';
import 'package:ecomm_store_app/common/widgets/texts/my_product_title.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/produc_image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Product Image
        MyRoundedImage(
          imageUrl: MyProductAssets.product18,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(MyAppSizes.sm),
          backgroundColor: MyAppHelperFunctions.isDarkMode(context)
              ? MyAppColors.darkGrey
              : MyAppColors.lightGrey,
        ),
        SizedBox(width: MyAppSizes.spaceBtwItems),

        // Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: MyProductTitle(
                  title: 'Nike Shoes',
                  smallSize: true,
                  maxLines: 1,
                ),
              ),

              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'EU 80',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),

              // Quantity increment/decremnent and remove from cart Iocn
              // MyIncrementDecrementWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

