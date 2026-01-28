import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/device/device_utillity.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {

// If you want to add the background color to tabs you have to wrap them in a Material Widget.
// Todo that we neeed (PreferredSized) widget and that's why created custom class preferredSizedWidget.

  const MyTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? MyAppColors.black : MyAppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MyAppColors.primaryColor,
        labelColor: dark ? MyAppColors.white : MyAppColors.primaryColor,
        unselectedLabelColor: MyAppColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(MyAppDeviceUtility.getAppBarHeight());
}
