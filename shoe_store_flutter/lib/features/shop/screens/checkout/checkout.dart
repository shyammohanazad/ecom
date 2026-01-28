import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/my_rounded_countainer.dart';
import 'package:ecomm_store_app/common/widgets/login_signUp/success_screen.dart';
import 'package:ecomm_store_app/features/shop/screens/cart/cart.dart';
import 'package:ecomm_store_app/features/shop/screens/cart/widget/my_coupon_apply_widget.dart';
import 'package:ecomm_store_app/features/shop/screens/checkout/widget/My_billing_address_section.dart';
import 'package:ecomm_store_app/features/shop/screens/checkout/widget/My_billing_payment_section.dart';
import 'package:ecomm_store_app/features/shop/screens/checkout/widget/my_billing_amount_section.dart';
import 'package:ecomm_store_app/utils/bottom_navigation_menu.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCheckoutScreen extends StatelessWidget {
  const MyCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: MyAppAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
        child: Column(
          children: [
            // Items in Cart
            MyCartScreen(showAddRemoveButtons: false),
            SizedBox(height: MyAppSizes.spaceBtwSections),

            // Coupon Textfield
            MyCouponApplyWidget(),
            SizedBox(height: MyAppSizes.spaceBtwSections),

            // Billing Section
            MyRoundedCountainer(
              padding: EdgeInsets.all(MyAppSizes.md),
              showBorder: true,
              backgroundColor: dark ? MyAppColors.black : MyAppColors.white,
              child: Column(
                children: [
                  // Pricing
                  MyBillingSection(),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  // Divider
                  Divider(),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  // Payment Methods
                  MyPaymentMethodsSection(),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  // Address
                  MyBillingAddressSection(),
                  SizedBox(height: MyAppSizes.spaceBtwItems),
                  
                ],
              ),
            ),
          ],
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
      child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(image: MyAppImageStrings.paymentSuccessIcon, title: 'Payment Successful.', subtitle: 'Your Item will be shipped soon.', onPressed: () { Get.offAll(() => BottomNavigationMenu()); },)), child: Text('Checkout \$256')),),
    );
  }
}
