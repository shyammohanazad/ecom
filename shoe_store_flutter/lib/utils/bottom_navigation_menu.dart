import 'package:ecomm_store_app/features/personalization/screens/profile/profile.dart';
import 'package:ecomm_store_app/features/personalization/screens/settings/my_settings_screen.dart';
import 'package:ecomm_store_app/features/shop/screens/home/shop_home.dart';
import 'package:ecomm_store_app/features/shop/screens/store/my_store.dart';
import 'package:ecomm_store_app/features/shop/screens/wishlist/my_wishlist.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: dark ? MyAppColors.black : Colors.white,
          indicatorColor: dark
              ? MyAppColors.white.withAlpha(10)
              : MyAppColors.black.withAlpha(10),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomePage(),
    MyStoreScreen(),
    MyWishlist(),
    MySettingsScreen(),
  ];
}
