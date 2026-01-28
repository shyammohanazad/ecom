import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAppCartCounterIcon extends StatelessWidget {
  const MyAppCartCounterIcon({
    super.key,
    this.iconColor = MyAppColors.textOnPrimary,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: MyAppColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: MyAppColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
      ],
    );
  }
}
