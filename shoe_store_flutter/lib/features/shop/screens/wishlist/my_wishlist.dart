import 'package:ecomm_store_app/common/icons/my_circular_icon.dart';
import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecomm_store_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecomm_store_app/features/shop/screens/home/shop_home.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class MyWishlist extends StatelessWidget {
  const MyWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: MyAppAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MyCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomePage()),
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
          child: Column(
            children: [
              MyGridLayout(
                itemCount: 6,
                itemBuilder: ((_, index) => MyProductCardVertical()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
