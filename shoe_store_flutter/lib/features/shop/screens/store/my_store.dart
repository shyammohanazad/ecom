import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/appbar/tabbar.dart';
import 'package:ecomm_store_app/common/widgets/brands/my_brand_card.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecomm_store_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecomm_store_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyStoreScreen extends StatelessWidget {
  const MyStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppAppBar(
          actions: [MyAppCartCounterIcon(onPressed: () {})],
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),

        body: NestedScrollView(
          headerSliverBuilder: ((_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? MyAppColors.black : MyAppColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                //to add any widget in sliverSppBar.
                flexibleSpace: Padding(
                  padding: EdgeInsetsGeometry.all(MyAppSizes.defaultSpacing),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: MyAppSizes.spaceBtwItems),
                      MyAppSearchContainer(
                        text: '',
                        showBorder: true,
                        showBackground: false,
                      ),
                      SizedBox(height: MyAppSizes.spaceBtwSections),

                      // Feature Brands
                      MyAppSectionHeading(
                        headingText: 'Featured Brands',
                        onPressed: () {},
                      ),
                      SizedBox(height: MyAppSizes.spaceBtwItems / 1.5),

                      // Brands Card Grid
                      MyGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: ((_, index) {
                          return MyBrandCard(showBorder: false);
                        }),
                      ),
                    ],
                  ),
                ),

                // Tabs ( Tabs that are scroallable till top and then fixed, and let the product grid below it scrollUp)
                bottom: MyTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          }),
          // body
          body: TabBarView(
            children: [
             MyCategoryTab(), MyCategoryTab(),MyCategoryTab(),MyCategoryTab(),MyCategoryTab(),
            ],
          ),
          
        ),
      ),
    );
  }
}

