import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecomm_store_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecomm_store_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecomm_store_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecomm_store_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            MyAppPrimaryHeaderContainer(
              child: Column(
                children: [
                  Column(
                    children: [
                      // Custom AppBar
                      MyAppHomeAppBar(),
                      SizedBox(height: MyAppSizes.spaceBtwSections),

                      // SearchBar
                      MyAppSearchContainer(text: 'Search in Store'),
                      SizedBox(height: MyAppSizes.spaceBtwSections),

                      // Categories
                      Padding(
                        padding: EdgeInsetsGeometry.only(
                          left: MyAppSizes.defaultSpacing,
                        ),
                        child: Column(
                          children: [
                            // Heading
                            MyAppSectionHeading(
                              headingText: 'Popular Categories',
                              buttonTitle: 'view all',
                              onPressed: () {},
                            ),
                            SizedBox(height: MyAppSizes.spaceBtwItems),

                            // Categories
                            MyHomeCategories(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Body -- Section
            Padding(
              padding: const EdgeInsets.all(MyAppSizes.defaultSpacing),
              child: Column(
                children: [
                  // Promo Banner Slider
                  MyPromoSlider(
                    banners: [
                      MyAppImageStrings.promotBanner1,
                      MyAppImageStrings.promotBanner2,
                      MyAppImageStrings.promotBanner3,
                    ],
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwSections),

                  // Section Heading
                  MyAppSectionHeading(headingText: 'Popular Products', onPressed: () {
                    
                  },),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  // Popular Products Grid with Product-Card
                  MyGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) =>
                      MyProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

