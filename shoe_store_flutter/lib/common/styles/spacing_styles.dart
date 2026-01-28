import 'package:ecomm_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyAppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =
      EdgeInsetsGeometry.only(
        top: MyAppSizes.appBarHeight,
        left: MyAppSizes.defaultSpacing,
        bottom: MyAppSizes.defaultSpacing,
        right: MyAppSizes.defaultSpacing,
      );
}
