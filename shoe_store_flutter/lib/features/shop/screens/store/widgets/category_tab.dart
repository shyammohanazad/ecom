import 'package:ecomm_store_app/common/widgets/brands/my_brand_showcase.dart';
import 'package:ecomm_store_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecomm_store_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/utils/constants/produc_image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsetsGeometry.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              // Brands
              MyBrandShowCase(
                images: [
                  MyProductAssets.product1,
                  MyProductAssets.product11,
                  MyProductAssets.product12,
                ],
              ),
              MyBrandShowCase(
                images: [
                  MyProductAssets.product1,
                  MyProductAssets.product11,
                  MyProductAssets.product12,
                ],
              ),
              SizedBox(height: MyAppSizes.spaceBtwItems),

              // Products
              MyAppSectionHeading(
                headingText: 'You might like.',
                onPressed: () {},
              ),
              SizedBox(height: MyAppSizes.spaceBtwItems),

              MyGridLayout(
                itemCount: 4,
                itemBuilder: ((_, index) => MyProductCardVertical()),
              ),
              SizedBox(height: MyAppSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
