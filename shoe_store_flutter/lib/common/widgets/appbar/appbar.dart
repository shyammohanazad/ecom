import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyAppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MyAppSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,

        // here we have coded such that if showBackArrow is true then appbar will show back-arrow and if user have passed its own icon or if we wnat to pass anything different from back-arrow  then that will be passed as leadingIcon ( a variable of our custom appbar)
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            :
              // Since in some cases we don not want to use any of the two ie back-arrow or customIcon , but since leadingIcon will Ocuupy space in appbar. to tackle this situation we haeve implemented null check.
              leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(MyAppDeviceUtility.getAppBarHeight());
}
