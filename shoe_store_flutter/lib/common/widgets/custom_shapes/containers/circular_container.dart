import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyAppCircularContainer extends StatelessWidget {
  const MyAppCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.background = MyAppColors.white, this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      height: height,
      width: width,
      margin: margin,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: child,
    );
  }
}
