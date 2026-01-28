import 'package:ecomm_store_app/common/widgets/appbar/appbar.dart';
import 'package:ecomm_store_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class MyAppHomeAppBar extends StatelessWidget {
  const MyAppHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyAppAppBar(
      title: Column(
        children: [
          Text(
            MyAppTextStrings.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: MyAppColors.grey),
          ),
          Text(
            MyAppTextStrings.homeSubtitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: MyAppColors.white),
          ),
        ],
      ),
      actions: [
        MyAppCartCounterIcon(iconColor: MyAppColors.white, onPressed: () {}),
      ],
    );
  }
}
