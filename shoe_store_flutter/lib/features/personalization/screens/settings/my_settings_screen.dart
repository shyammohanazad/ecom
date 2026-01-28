import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecomm_store_app/common/widgets/list_tiles/my_user_profile_tile.dart';
import 'package:ecomm_store_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecomm_store_app/common/widgets/texts/section_heading.dart';
import 'package:ecomm_store_app/features/personalization/screens/addresses/address.dart';
import 'package:ecomm_store_app/features/personalization/screens/profile/profile.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class MySettingsScreen extends StatelessWidget {
  const MySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyAppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBAr
                  MyAppAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                        color: MyAppColors.white,
                      ),
                    ),
                  ),

                  // User Profile Card
                  MyUserProfileTile(
                    userName: 'Shyam Mohan Azad',
                    userEmail: 'contact@google.com',
                    onTap: () => Get.to(() => MyProfileScreen()),
                  ),

                  SizedBox(height: MyAppSizes.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.all(MyAppSizes.defaultSpacing),
              child: Column(
                children: [
                  // Account Settings
                  MyAppSectionHeading(
                    headingText: 'Account Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  MySettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set Shopping Delivery Address.',
                    onTap: () {
                      Get.to(() => MyUserAddressScreen());
                    },
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My cart',
                    subtitle: 'Add, remove products and move to checkout.',
                    onTap: () {},
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-Progress and completed Orders.',
                    onTap: () {},
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw Balance to regiestered Bank Account.',
                    onTap: () {},
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of All the discount coupons.',
                    onTap: () {},
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set Notification message.',
                    onTap: () {},
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage dat usgae and connected accounts.',
                    onTap: () {},
                  ),

                  // App Settings
                  SizedBox(height: MyAppSizes.spaceBtwSections),
                  MyAppSectionHeading(
                    headingText: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: MyAppSizes.spaceBtwItems),

                  MySettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your cloud Firebase.',
                    onTap: () {},
                  ),

                  MySettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geo Location',
                    subtitle: 'Set Recommendation based on location.',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),

                  MySettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages.',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),

                  MySettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set Image quality to be seen.',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
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
