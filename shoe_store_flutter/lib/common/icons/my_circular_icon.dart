import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyCircularIcon extends StatelessWidget {
  // A custom circular Icon widget with a background color.
  // Properties are:
  // Container [width], [height] & [backgroundColor]
  //
  // Icons [size], [color] & [onPresses]

  const MyCircularIcon({super.key, this.width, this.height, this.size = MyAppSizes.lg, required this.icon, this.color, this.backgroundColor,  this.onPressed});

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Container(
      width: width ,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null ? backgroundColor! : dark ? MyAppColors.black.withValues(alpha: 0.9) : MyAppColors.containerLight.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(onPressed: (){}, icon: Icon(icon, color: color, size: size,)),
      );
  }
}
