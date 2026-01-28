import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecomm_store_app/common/widgets/products/cart/increment_decrement_widget.dart';
import 'package:ecomm_store_app/features/shop/screens/checkout/checkout.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: ListView.separated(
        itemCount: 4,
        shrinkWrap: true,
        separatorBuilder: (_, __) =>
            SizedBox(height: MyAppSizes.spaceBtwItems),
        itemBuilder: (_, index) => Column(children: [MyCartItem(),
         if (showAddRemoveButtons) SizedBox(height: MyAppSizes.defaultSpacing,), 
         // Quantity increment/decremnent and remove from cart Iocn
         if(showAddRemoveButtons) MyIncrementDecrementWidget()]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpacing),
        child: ElevatedButton(
          onPressed: ()=> Get.to(()=>MyCheckoutScreen()),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
